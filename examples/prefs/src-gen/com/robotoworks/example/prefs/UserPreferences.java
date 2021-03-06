/*
 * Generated by Robotoworks Mechanoid
 */
package com.robotoworks.example.prefs;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import com.robotoworks.mechanoid.Mechanoid;

public class UserPreferences {
	
	public static final String PREFERENCES_NAME = "UserPreferences";

	public interface Keys {
		String USER_ID = "USER_ID";
		String NAME = "NAME";
		String AGE = "AGE";
		String BANK_BALANCE = "BANK_BALANCE";
		String SUBSCRIBED = "SUBSCRIBED";
	}

	private final SharedPreferences mPreferences;

	private static UserPreferences sInstance;

	public static UserPreferences getInstance() {
		if(sInstance == null) {
			sInstance = new UserPreferences(Mechanoid.getApplicationContext());
		}
		
		return sInstance;
	}
	
	private UserPreferences(Context context) {
		mPreferences = context.getSharedPreferences(PREFERENCES_NAME, 0);
	}

	public long getUserId() {
		return mPreferences.getLong(Keys.USER_ID, 0);
	}
	public String getName() {
		return mPreferences.getString(Keys.NAME, null);
	}
	public int getAge() {
		return mPreferences.getInt(Keys.AGE, 0);
	}
	public float getBankBalance() {
		return mPreferences.getFloat(Keys.BANK_BALANCE, 100);
	}
	public boolean getSubscribed() {
		return mPreferences.getBoolean(Keys.SUBSCRIBED, true);
	}

	public SharedPreferences getSharedPreferences() {
		return mPreferences;
	}

	public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {
		mPreferences.registerOnSharedPreferenceChangeListener(listener);
	}

	public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {
		mPreferences.unregisterOnSharedPreferenceChangeListener(listener);
	}

	public UserPreferencesEditor edit() {
		return new UserPreferencesEditor(mPreferences.edit());
	}

	public class UserPreferencesEditor {
		private SharedPreferences.Editor mEditor;

		public UserPreferencesEditor(SharedPreferences.Editor editor) {
			mEditor = editor;
		}

		public boolean commit() {
			return mEditor.commit();
		}

		@TargetApi(9)
		public void apply() {
			mEditor.apply();
		}

		public UserPreferencesEditor clear() {
			mEditor.clear();
			return this;
		}
		public UserPreferencesEditor putUserId(long value) {
			mEditor.putLong(Keys.USER_ID, value);
			return this;
		}
		public UserPreferencesEditor putName(String value) {
			mEditor.putString(Keys.NAME, value);
			return this;
		}
		public UserPreferencesEditor putAge(int value) {
			mEditor.putInt(Keys.AGE, value);
			return this;
		}
		public UserPreferencesEditor putBankBalance(float value) {
			mEditor.putFloat(Keys.BANK_BALANCE, value);
			return this;
		}
		public UserPreferencesEditor putSubscribed(boolean value) {
			mEditor.putBoolean(Keys.SUBSCRIBED, value);
			return this;
		}
	}
}
