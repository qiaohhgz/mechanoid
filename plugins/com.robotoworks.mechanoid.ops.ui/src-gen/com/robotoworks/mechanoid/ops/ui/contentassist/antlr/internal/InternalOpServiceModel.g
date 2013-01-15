/*
* generated by Xtext
*/
grammar InternalOpServiceModel;

options {
	superClass=AbstractInternalContentAssistParser;
	
}

@lexer::header {
package com.robotoworks.mechanoid.ops.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package com.robotoworks.mechanoid.ops.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import com.robotoworks.mechanoid.ops.services.OpServiceModelGrammarAccess;

}

@parser::members {
 
 	private OpServiceModelGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(OpServiceModelGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleModel
entryRuleModel 
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getModelAccess().getGroup()); }
(rule__Model__Group__0)
{ after(grammarAccess.getModelAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleServiceBlock
entryRuleServiceBlock 
:
{ before(grammarAccess.getServiceBlockRule()); }
	 ruleServiceBlock
{ after(grammarAccess.getServiceBlockRule()); } 
	 EOF 
;

// Rule ServiceBlock
ruleServiceBlock
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getServiceBlockAccess().getGroup()); }
(rule__ServiceBlock__Group__0)
{ after(grammarAccess.getServiceBlockAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOperation
entryRuleOperation 
:
{ before(grammarAccess.getOperationRule()); }
	 ruleOperation
{ after(grammarAccess.getOperationRule()); } 
	 EOF 
;

// Rule Operation
ruleOperation
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getOperationAccess().getGroup()); }
(rule__Operation__Group__0)
{ after(grammarAccess.getOperationAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOperationArg
entryRuleOperationArg 
:
{ before(grammarAccess.getOperationArgRule()); }
	 ruleOperationArg
{ after(grammarAccess.getOperationArgRule()); } 
	 EOF 
;

// Rule OperationArg
ruleOperationArg
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getOperationArgAccess().getGroup()); }
(rule__OperationArg__Group__0)
{ after(grammarAccess.getOperationArgAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleWithUniqueBlock
entryRuleWithUniqueBlock 
:
{ before(grammarAccess.getWithUniqueBlockRule()); }
	 ruleWithUniqueBlock
{ after(grammarAccess.getWithUniqueBlockRule()); } 
	 EOF 
;

// Rule WithUniqueBlock
ruleWithUniqueBlock
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getWithUniqueBlockAccess().getGroup()); }
(rule__WithUniqueBlock__Group__0)
{ after(grammarAccess.getWithUniqueBlockAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleFQN
entryRuleFQN 
:
{ before(grammarAccess.getFQNRule()); }
	 ruleFQN
{ after(grammarAccess.getFQNRule()); } 
	 EOF 
;

// Rule FQN
ruleFQN
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getFQNAccess().getGroup()); }
(rule__FQN__Group__0)
{ after(grammarAccess.getFQNAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}




// Rule OpArgType
ruleOpArgType
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpArgTypeAccess().getAlternatives()); }
(rule__OpArgType__Alternatives)
{ after(grammarAccess.getOpArgTypeAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__OpArgType__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOpArgTypeAccess().getBooleanEnumLiteralDeclaration_0()); }
(	'boolean' 
)
{ after(grammarAccess.getOpArgTypeAccess().getBooleanEnumLiteralDeclaration_0()); }
)

    |(
{ before(grammarAccess.getOpArgTypeAccess().getStringEnumLiteralDeclaration_1()); }
(	'String' 
)
{ after(grammarAccess.getOpArgTypeAccess().getStringEnumLiteralDeclaration_1()); }
)

    |(
{ before(grammarAccess.getOpArgTypeAccess().getIntegerEnumLiteralDeclaration_2()); }
(	'int' 
)
{ after(grammarAccess.getOpArgTypeAccess().getIntegerEnumLiteralDeclaration_2()); }
)

    |(
{ before(grammarAccess.getOpArgTypeAccess().getFloatEnumLiteralDeclaration_3()); }
(	'float' 
)
{ after(grammarAccess.getOpArgTypeAccess().getFloatEnumLiteralDeclaration_3()); }
)

    |(
{ before(grammarAccess.getOpArgTypeAccess().getLongEnumLiteralDeclaration_4()); }
(	'long' 
)
{ after(grammarAccess.getOpArgTypeAccess().getLongEnumLiteralDeclaration_4()); }
)

    |(
{ before(grammarAccess.getOpArgTypeAccess().getParcelableEnumLiteralDeclaration_5()); }
(	'Parcelable' 
)
{ after(grammarAccess.getOpArgTypeAccess().getParcelableEnumLiteralDeclaration_5()); }
)

    |(
{ before(grammarAccess.getOpArgTypeAccess().getPendingIntentEnumLiteralDeclaration_6()); }
(	'PendingIntent' 
)
{ after(grammarAccess.getOpArgTypeAccess().getPendingIntentEnumLiteralDeclaration_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__Model__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__0__Impl
	rule__Model__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getPackageKeyword_0()); }

	'package' 

{ after(grammarAccess.getModelAccess().getPackageKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__1__Impl
	rule__Model__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getPackageNameAssignment_1()); }
(rule__Model__PackageNameAssignment_1)
{ after(grammarAccess.getModelAccess().getPackageNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getServiceAssignment_2()); }
(rule__Model__ServiceAssignment_2)
{ after(grammarAccess.getModelAccess().getServiceAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__ServiceBlock__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ServiceBlock__Group__0__Impl
	rule__ServiceBlock__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ServiceBlock__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getServiceBlockAccess().getServiceKeyword_0()); }

	'service' 

{ after(grammarAccess.getServiceBlockAccess().getServiceKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ServiceBlock__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ServiceBlock__Group__1__Impl
	rule__ServiceBlock__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ServiceBlock__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getServiceBlockAccess().getNameAssignment_1()); }
(rule__ServiceBlock__NameAssignment_1)
{ after(grammarAccess.getServiceBlockAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ServiceBlock__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ServiceBlock__Group__2__Impl
	rule__ServiceBlock__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ServiceBlock__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getServiceBlockAccess().getLeftCurlyBracketKeyword_2()); }

	'{' 

{ after(grammarAccess.getServiceBlockAccess().getLeftCurlyBracketKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ServiceBlock__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ServiceBlock__Group__3__Impl
	rule__ServiceBlock__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ServiceBlock__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getServiceBlockAccess().getOpsAssignment_3()); }
(rule__ServiceBlock__OpsAssignment_3)*
{ after(grammarAccess.getServiceBlockAccess().getOpsAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__ServiceBlock__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__ServiceBlock__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ServiceBlock__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getServiceBlockAccess().getRightCurlyBracketKeyword_4()); }

	'}' 

{ after(grammarAccess.getServiceBlockAccess().getRightCurlyBracketKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__Operation__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__0__Impl
	rule__Operation__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getOperationKeyword_0()); }

	'operation' 

{ after(grammarAccess.getOperationAccess().getOperationKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__1__Impl
	rule__Operation__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getNameAssignment_1()); }
(rule__Operation__NameAssignment_1)
{ after(grammarAccess.getOperationAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__2__Impl
	rule__Operation__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getLeftParenthesisKeyword_2()); }

	'(' 

{ after(grammarAccess.getOperationAccess().getLeftParenthesisKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__3__Impl
	rule__Operation__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getGroup_3()); }
(rule__Operation__Group_3__0)?
{ after(grammarAccess.getOperationAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__4__Impl
	rule__Operation__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getRightParenthesisKeyword_4()); }

	')' 

{ after(grammarAccess.getOperationAccess().getRightParenthesisKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getUniqueAssignment_5()); }
(rule__Operation__UniqueAssignment_5)?
{ after(grammarAccess.getOperationAccess().getUniqueAssignment_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__Operation__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group_3__0__Impl
	rule__Operation__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getArgsAssignment_3_0()); }
(rule__Operation__ArgsAssignment_3_0)
{ after(grammarAccess.getOperationAccess().getArgsAssignment_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getGroup_3_1()); }
(rule__Operation__Group_3_1__0)*
{ after(grammarAccess.getOperationAccess().getGroup_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Operation__Group_3_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group_3_1__0__Impl
	rule__Operation__Group_3_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group_3_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getCommaKeyword_3_1_0()); }

	',' 

{ after(grammarAccess.getOperationAccess().getCommaKeyword_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group_3_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group_3_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group_3_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getArgsAssignment_3_1_1()); }
(rule__Operation__ArgsAssignment_3_1_1)
{ after(grammarAccess.getOperationAccess().getArgsAssignment_3_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__OperationArg__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OperationArg__Group__0__Impl
	rule__OperationArg__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationArg__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationArgAccess().getTypeAssignment_0()); }
(rule__OperationArg__TypeAssignment_0)
{ after(grammarAccess.getOperationArgAccess().getTypeAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__OperationArg__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__OperationArg__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OperationArg__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationArgAccess().getNameAssignment_1()); }
(rule__OperationArg__NameAssignment_1)
{ after(grammarAccess.getOperationArgAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__WithUniqueBlock__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WithUniqueBlock__Group__0__Impl
	rule__WithUniqueBlock__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WithUniqueBlock__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWithUniqueBlockAccess().getWithKeyword_0()); }

	'with' 

{ after(grammarAccess.getWithUniqueBlockAccess().getWithKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WithUniqueBlock__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WithUniqueBlock__Group__1__Impl
	rule__WithUniqueBlock__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__WithUniqueBlock__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWithUniqueBlockAccess().getUniqueKeyword_1()); }

	'unique' 

{ after(grammarAccess.getWithUniqueBlockAccess().getUniqueKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WithUniqueBlock__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WithUniqueBlock__Group__2__Impl
	rule__WithUniqueBlock__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__WithUniqueBlock__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWithUniqueBlockAccess().getLeftParenthesisKeyword_2()); }

	'(' 

{ after(grammarAccess.getWithUniqueBlockAccess().getLeftParenthesisKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WithUniqueBlock__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WithUniqueBlock__Group__3__Impl
	rule__WithUniqueBlock__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__WithUniqueBlock__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWithUniqueBlockAccess().getArgsAssignment_3()); }
(rule__WithUniqueBlock__ArgsAssignment_3)
{ after(grammarAccess.getWithUniqueBlockAccess().getArgsAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WithUniqueBlock__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WithUniqueBlock__Group__4__Impl
	rule__WithUniqueBlock__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__WithUniqueBlock__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWithUniqueBlockAccess().getGroup_4()); }
(rule__WithUniqueBlock__Group_4__0)*
{ after(grammarAccess.getWithUniqueBlockAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WithUniqueBlock__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WithUniqueBlock__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WithUniqueBlock__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWithUniqueBlockAccess().getRightParenthesisKeyword_5()); }

	')' 

{ after(grammarAccess.getWithUniqueBlockAccess().getRightParenthesisKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__WithUniqueBlock__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WithUniqueBlock__Group_4__0__Impl
	rule__WithUniqueBlock__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__WithUniqueBlock__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWithUniqueBlockAccess().getCommaKeyword_4_0()); }

	',' 

{ after(grammarAccess.getWithUniqueBlockAccess().getCommaKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__WithUniqueBlock__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__WithUniqueBlock__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__WithUniqueBlock__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWithUniqueBlockAccess().getArgsAssignment_4_1()); }
(rule__WithUniqueBlock__ArgsAssignment_4_1)
{ after(grammarAccess.getWithUniqueBlockAccess().getArgsAssignment_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__FQN__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FQN__Group__0__Impl
	rule__FQN__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FQN__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFQNAccess().getGroup_1()); }
(rule__FQN__Group_1__0)*
{ after(grammarAccess.getFQNAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__FQN__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FQN__Group_1__0__Impl
	rule__FQN__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }

	'.' 

{ after(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FQN__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}







rule__Model__PackageNameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getPackageNameFQNParserRuleCall_1_0()); }
	ruleFQN{ after(grammarAccess.getModelAccess().getPackageNameFQNParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ServiceAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getServiceServiceBlockParserRuleCall_2_0()); }
	ruleServiceBlock{ after(grammarAccess.getModelAccess().getServiceServiceBlockParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ServiceBlock__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getServiceBlockAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getServiceBlockAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__ServiceBlock__OpsAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getServiceBlockAccess().getOpsOperationParserRuleCall_3_0()); }
	ruleOperation{ after(grammarAccess.getServiceBlockAccess().getOpsOperationParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getOperationAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__ArgsAssignment_3_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getArgsOperationArgParserRuleCall_3_0_0()); }
	ruleOperationArg{ after(grammarAccess.getOperationAccess().getArgsOperationArgParserRuleCall_3_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__ArgsAssignment_3_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getArgsOperationArgParserRuleCall_3_1_1_0()); }
	ruleOperationArg{ after(grammarAccess.getOperationAccess().getArgsOperationArgParserRuleCall_3_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__UniqueAssignment_5
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getUniqueWithUniqueBlockParserRuleCall_5_0()); }
	ruleWithUniqueBlock{ after(grammarAccess.getOperationAccess().getUniqueWithUniqueBlockParserRuleCall_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__OperationArg__TypeAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationArgAccess().getTypeOpArgTypeEnumRuleCall_0_0()); }
	ruleOpArgType{ after(grammarAccess.getOperationArgAccess().getTypeOpArgTypeEnumRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__OperationArg__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationArgAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getOperationArgAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__WithUniqueBlock__ArgsAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWithUniqueBlockAccess().getArgsOperationArgCrossReference_3_0()); }
(
{ before(grammarAccess.getWithUniqueBlockAccess().getArgsOperationArgIDTerminalRuleCall_3_0_1()); }
	RULE_ID{ after(grammarAccess.getWithUniqueBlockAccess().getArgsOperationArgIDTerminalRuleCall_3_0_1()); }
)
{ after(grammarAccess.getWithUniqueBlockAccess().getArgsOperationArgCrossReference_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__WithUniqueBlock__ArgsAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getWithUniqueBlockAccess().getArgsOperationArgCrossReference_4_1_0()); }
(
{ before(grammarAccess.getWithUniqueBlockAccess().getArgsOperationArgIDTerminalRuleCall_4_1_0_1()); }
	RULE_ID{ after(grammarAccess.getWithUniqueBlockAccess().getArgsOperationArgIDTerminalRuleCall_4_1_0_1()); }
)
{ after(grammarAccess.getWithUniqueBlockAccess().getArgsOperationArgCrossReference_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

