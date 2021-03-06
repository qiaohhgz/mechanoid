package com.robotoworks.mechanoid.db.util;

import com.google.common.base.Objects;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import com.robotoworks.mechanoid.db.sqliteModel.CastExpression;
import com.robotoworks.mechanoid.db.sqliteModel.ColumnDef;
import com.robotoworks.mechanoid.db.sqliteModel.ColumnSource;
import com.robotoworks.mechanoid.db.sqliteModel.ColumnSourceRef;
import com.robotoworks.mechanoid.db.sqliteModel.ColumnType;
import com.robotoworks.mechanoid.db.sqliteModel.CreateTableStatement;
import com.robotoworks.mechanoid.db.sqliteModel.CreateViewStatement;
import com.robotoworks.mechanoid.db.sqliteModel.DDLStatement;
import com.robotoworks.mechanoid.db.sqliteModel.DatabaseBlock;
import com.robotoworks.mechanoid.db.sqliteModel.ExprConcat;
import com.robotoworks.mechanoid.db.sqliteModel.Expression;
import com.robotoworks.mechanoid.db.sqliteModel.Function;
import com.robotoworks.mechanoid.db.sqliteModel.JoinSource;
import com.robotoworks.mechanoid.db.sqliteModel.JoinStatement;
import com.robotoworks.mechanoid.db.sqliteModel.MigrationBlock;
import com.robotoworks.mechanoid.db.sqliteModel.ResultColumn;
import com.robotoworks.mechanoid.db.sqliteModel.SelectCore;
import com.robotoworks.mechanoid.db.sqliteModel.SelectCoreExpression;
import com.robotoworks.mechanoid.db.sqliteModel.SelectExpression;
import com.robotoworks.mechanoid.db.sqliteModel.SelectList;
import com.robotoworks.mechanoid.db.sqliteModel.SelectStatement;
import com.robotoworks.mechanoid.db.sqliteModel.SingleSource;
import com.robotoworks.mechanoid.db.sqliteModel.SqliteDataType;
import java.util.ArrayList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.EcoreUtil2;
import org.eclipse.xtext.util.Strings;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;

@SuppressWarnings("all")
public class ModelUtil {
  public static <T extends DDLStatement> ArrayList<T> findPreviousStatementsOfType(final DDLStatement stmt, final Class<T> statementType) {
    ArrayList<T> _arrayList = new ArrayList<T>();
    ArrayList<T> list = _arrayList;
    DatabaseBlock db = ModelUtil.<DatabaseBlock>getAncestorOfType(stmt, DatabaseBlock.class);
    EList<MigrationBlock> _migrations = db.getMigrations();
    for (final MigrationBlock migration : _migrations) {
      EList<DDLStatement> _statements = migration.getStatements();
      for (final DDLStatement ddl : _statements) {
        {
          boolean _equals = Objects.equal(ddl, stmt);
          if (_equals) {
            return list;
          }
          Class<? extends Object> _class = ddl.getClass();
          boolean _isAssignableFrom = statementType.isAssignableFrom(_class);
          if (_isAssignableFrom) {
            list.add(((T) ddl));
          }
        }
      }
    }
    return list;
  }
  
  public static <T extends DDLStatement> ArrayList<T> findStatementsOfTypeBetween(final Class<T> statementType, final DDLStatement from, final DDLStatement to) {
    ArrayList<T> _arrayList = new ArrayList<T>();
    ArrayList<T> list = _arrayList;
    boolean between = false;
    DatabaseBlock db = ModelUtil.<DatabaseBlock>getAncestorOfType(from, DatabaseBlock.class);
    EList<MigrationBlock> _migrations = db.getMigrations();
    for (final MigrationBlock migration : _migrations) {
      EList<DDLStatement> _statements = migration.getStatements();
      for (final DDLStatement ddl : _statements) {
        {
          boolean _equals = Objects.equal(ddl, to);
          if (_equals) {
            return list;
          }
          Class<? extends Object> _class = ddl.getClass();
          boolean _isAssignableFrom = statementType.isAssignableFrom(_class);
          if (_isAssignableFrom) {
            if (between) {
              list.add(((T) ddl));
            }
          }
          boolean _equals_1 = Objects.equal(ddl, from);
          if (_equals_1) {
            between = true;
          }
        }
      }
    }
    return list;
  }
  
  public static <T extends EObject> T getAncestorOfType(final EObject obj, final Class<T> ancestorType) {
    EObject temp = ((EObject) obj);
    EObject _eContainer = temp.eContainer();
    boolean _notEquals = (!Objects.equal(_eContainer, null));
    boolean _while = _notEquals;
    while (_while) {
      {
        EObject _eContainer_1 = temp.eContainer();
        temp = _eContainer_1;
        Class<? extends Object> _class = temp.getClass();
        boolean _isAssignableFrom = ancestorType.isAssignableFrom(_class);
        if (_isAssignableFrom) {
          return ((T) temp);
        }
      }
      EObject _eContainer_1 = temp.eContainer();
      boolean _notEquals_1 = (!Objects.equal(_eContainer_1, null));
      _while = _notEquals_1;
    }
    return null;
  }
  
  /**
   * walks back and visits each previous statement from the given statement, returning
   * false will cancel the process
   */
  public static void forEachPreviousStatement(final DDLStatement stmt, final Function1<DDLStatement,Boolean> delegate) {
    EObject current = ((EObject) stmt);
    MigrationBlock migration = null;
    boolean _dowhile = false;
    do {
      {
        EObject _previousSibling = EcoreUtil2.getPreviousSibling(current);
        boolean _notEquals = (!Objects.equal(_previousSibling, null));
        boolean _while = _notEquals;
        while (_while) {
          {
            EObject _previousSibling_1 = EcoreUtil2.getPreviousSibling(current);
            current = _previousSibling_1;
            Boolean _apply = delegate.apply(((DDLStatement) current));
            boolean _not = (!_apply);
            if (_not) {
              return;
            }
          }
          EObject _previousSibling_1 = EcoreUtil2.getPreviousSibling(current);
          boolean _notEquals_1 = (!Objects.equal(_previousSibling_1, null));
          _while = _notEquals_1;
        }
        EObject _eContainer = current.eContainer();
        EObject previousContainer = EcoreUtil2.getPreviousSibling(_eContainer);
        boolean _and = false;
        boolean _notEquals_1 = (!Objects.equal(previousContainer, null));
        if (!_notEquals_1) {
          _and = false;
        } else {
          _and = (_notEquals_1 && (previousContainer instanceof MigrationBlock));
        }
        if (_and) {
          migration = ((MigrationBlock) previousContainer);
          EList<DDLStatement> _statements = migration.getStatements();
          DDLStatement _last = IterableExtensions.<DDLStatement>last(_statements);
          current = _last;
          boolean _equals = Objects.equal(current, null);
          if (_equals) {
            return;
          }
          Boolean _apply = delegate.apply(((DDLStatement) current));
          boolean _not = (!_apply);
          if (_not) {
            return;
          }
        } else {
          migration = null;
        }
      }
      boolean _notEquals = (!Objects.equal(migration, null));
      _dowhile = _notEquals;
    } while(_dowhile);
  }
  
  public static ArrayList<EObject> getAllReferenceableSingleSources(final SelectCoreExpression expr) {
    final ArrayList<EObject> items = Lists.<EObject>newArrayList();
    if ((expr instanceof SelectCore)) {
      SelectCoreExpression _left = ((SelectCore) expr).getLeft();
      ArrayList<EObject> _allReferenceableSingleSources = ModelUtil.getAllReferenceableSingleSources(_left);
      items.addAll(_allReferenceableSingleSources);
      SelectCoreExpression _right = ((SelectCore) expr).getRight();
      ArrayList<EObject> _allReferenceableSingleSources_1 = ModelUtil.getAllReferenceableSingleSources(_right);
      items.addAll(_allReferenceableSingleSources_1);
    } else {
      if ((expr instanceof SelectExpression)) {
        ArrayList<SingleSource> _findAllSingleSources = ModelUtil.findAllSingleSources(((SelectExpression) expr));
        items.addAll(_findAllSingleSources);
      }
    }
    return items;
  }
  
  public static ArrayList<SingleSource> findAllSingleSources(final SelectExpression expr) {
    final ArrayList<SingleSource> items = Lists.<SingleSource>newArrayList();
    JoinSource _source = expr.getSource();
    SingleSource _source_1 = _source.getSource();
    items.add(_source_1);
    JoinSource _source_2 = expr.getSource();
    EList<JoinStatement> _joinStatements = _source_2.getJoinStatements();
    for (final JoinStatement join : _joinStatements) {
      SingleSource _singleSource = join.getSingleSource();
      items.add(_singleSource);
    }
    return items;
  }
  
  public static ColumnType toColumnType(final SqliteDataType dt) {
    boolean _matched = false;
    if (!_matched) {
      if (Objects.equal(dt,SqliteDataType.BLOB)) {
        _matched=true;
        return ColumnType.BLOB;
      }
    }
    if (!_matched) {
      if (Objects.equal(dt,SqliteDataType.INTEGER)) {
        _matched=true;
        return ColumnType.INTEGER;
      }
    }
    if (!_matched) {
      if (Objects.equal(dt,SqliteDataType.REAL)) {
        _matched=true;
        return ColumnType.REAL;
      }
    }
    return ColumnType.TEXT;
  }
  
  public static String toJavaTypeName(final ColumnType type) {
    boolean _matched = false;
    if (!_matched) {
      if (Objects.equal(type,ColumnType.TEXT)) {
        _matched=true;
        return "String";
      }
    }
    if (!_matched) {
      if (Objects.equal(type,ColumnType.INTEGER)) {
        _matched=true;
        return "long";
      }
    }
    if (!_matched) {
      if (Objects.equal(type,ColumnType.REAL)) {
        _matched=true;
        return "double";
      }
    }
    if (!_matched) {
      if (Objects.equal(type,ColumnType.BLOB)) {
        _matched=true;
        return "byte[]";
      }
    }
    if (!_matched) {
      if (Objects.equal(type,ColumnType.BOOLEAN)) {
        _matched=true;
        return "boolean";
      }
    }
    return "!!ERROR!!";
  }
  
  public static ColumnType getInferredColumnType(final ResultColumn col) {
    Expression expr = col.getExpression();
    boolean _matched = false;
    if (!_matched) {
      if (expr instanceof CastExpression) {
        final CastExpression _castExpression = (CastExpression)expr;
        _matched=true;
        SqliteDataType _type = _castExpression.getType();
        return ModelUtil.toColumnType(_type);
      }
    }
    if (!_matched) {
      if (expr instanceof ColumnSourceRef) {
        final ColumnSourceRef _columnSourceRef = (ColumnSourceRef)expr;
        _matched=true;
        ColumnSource _column = _columnSourceRef.getColumn();
        return ((ColumnDef) _column).getType();
      }
    }
    if (!_matched) {
      if (expr instanceof ExprConcat) {
        final ExprConcat _exprConcat = (ExprConcat)expr;
        _matched=true;
        return ColumnType.TEXT;
      }
    }
    if (!_matched) {
      if (expr instanceof Function) {
        final Function _function = (Function)expr;
        _matched=true;
        boolean _or = false;
        boolean _or_1 = false;
        String _name = _function.getName();
        boolean _equalsIgnoreCase = _name.equalsIgnoreCase("count");
        if (_equalsIgnoreCase) {
          _or_1 = true;
        } else {
          String _name_1 = _function.getName();
          boolean _equalsIgnoreCase_1 = _name_1.equalsIgnoreCase("length");
          _or_1 = (_equalsIgnoreCase || _equalsIgnoreCase_1);
        }
        if (_or_1) {
          _or = true;
        } else {
          String _name_2 = _function.getName();
          boolean _equalsIgnoreCase_2 = _name_2.equalsIgnoreCase("random");
          _or = (_or_1 || _equalsIgnoreCase_2);
        }
        if (_or) {
          return ColumnType.INTEGER;
        }
        return ColumnType.TEXT;
      }
    }
    return ColumnType.TEXT;
  }
  
  public static ArrayList<ColumnSource> getViewResultColumns(final CreateViewStatement stmt) {
    ArrayList<ColumnSource> _arrayList = new ArrayList<ColumnSource>();
    ArrayList<ColumnSource> result = _arrayList;
    SelectStatement _selectStatement = stmt.getSelectStatement();
    SelectCoreExpression coreExpr = _selectStatement.getCore();
    if ((coreExpr instanceof SelectCore)) {
      SelectCore core = ((SelectCore) coreExpr);
      SelectCoreExpression _right = core.getRight();
      SelectList selectList = ((SelectExpression) _right).getSelectList();
      boolean _notEquals = (!Objects.equal(selectList, null));
      if (_notEquals) {
        EList<ColumnSource> _resultColumns = selectList.getResultColumns();
        final Function1<ColumnSource,Boolean> _function = new Function1<ColumnSource,Boolean>() {
            public Boolean apply(final ColumnSource it) {
              boolean _and = false;
              String _name = it.getName();
              boolean _notEquals = (!Objects.equal(_name, null));
              if (!_notEquals) {
                _and = false;
              } else {
                String _name_1 = it.getName();
                boolean _equals = _name_1.equals("");
                boolean _not = (!_equals);
                _and = (_notEquals && _not);
              }
              return Boolean.valueOf(_and);
            }
          };
        Iterable<ColumnSource> _filter = IterableExtensions.<ColumnSource>filter(_resultColumns, _function);
        Iterables.<ColumnSource>addAll(result, _filter);
      }
    } else {
      SelectList selectList_1 = ((SelectExpression) coreExpr).getSelectList();
      boolean _notEquals_1 = (!Objects.equal(selectList_1, null));
      if (_notEquals_1) {
        EList<ColumnSource> _resultColumns_1 = selectList_1.getResultColumns();
        final Function1<ColumnSource,Boolean> _function_1 = new Function1<ColumnSource,Boolean>() {
            public Boolean apply(final ColumnSource it) {
              boolean _and = false;
              String _name = it.getName();
              boolean _notEquals = (!Objects.equal(_name, null));
              if (!_notEquals) {
                _and = false;
              } else {
                String _name_1 = it.getName();
                boolean _equals = _name_1.equals("");
                boolean _not = (!_equals);
                _and = (_notEquals && _not);
              }
              return Boolean.valueOf(_and);
            }
          };
        Iterable<ColumnSource> _filter_1 = IterableExtensions.<ColumnSource>filter(_resultColumns_1, _function_1);
        Iterables.<ColumnSource>addAll(result, _filter_1);
      }
    }
    return result;
  }
  
  public static boolean hasAndroidPrimaryKey(final CreateTableStatement stmt) {
    EList<ColumnSource> _columnDefs = stmt.getColumnDefs();
    final Function1<ColumnSource,Boolean> _function = new Function1<ColumnSource,Boolean>() {
        public Boolean apply(final ColumnSource it) {
          String _name = it.getName();
          boolean _equals = _name.equals("_id");
          return Boolean.valueOf(_equals);
        }
      };
    return IterableExtensions.<ColumnSource>exists(_columnDefs, _function);
  }
  
  public static boolean hasAndroidPrimaryKey(final CreateViewStatement stmt) {
    ArrayList<ColumnSource> _viewResultColumns = ModelUtil.getViewResultColumns(stmt);
    final Function1<ColumnSource,Boolean> _function = new Function1<ColumnSource,Boolean>() {
        public Boolean apply(final ColumnSource it) {
          boolean _and = false;
          String _name = it.getName();
          boolean _isEmpty = Strings.isEmpty(_name);
          boolean _not = (!_isEmpty);
          if (!_not) {
            _and = false;
          } else {
            String _name_1 = it.getName();
            boolean _equals = _name_1.equals("_id");
            _and = (_not && _equals);
          }
          return Boolean.valueOf(_and);
        }
      };
    return IterableExtensions.<ColumnSource>exists(_viewResultColumns, _function);
  }
}
