/*
 * Generated by Robotoworks Mechanoid
 */
package com.robotoworks.example.movies.ops;

import com.robotoworks.mechanoid.Mechanoid;
import com.robotoworks.mechanoid.ops.Operation;
import com.robotoworks.mechanoid.ops.OperationResult;
import com.robotoworks.mechanoid.ops.OperationServiceBridge;
import com.robotoworks.mechanoid.ops.OperationConfiguration;
import android.content.Intent;
import android.os.Bundle;

public abstract class AbstractGetMoviesOperation extends Operation {
	public static final String ACTION_GET_MOVIES = "com.robotoworks.example.movies.ops.MoviesService.actions.GET_MOVIES";


	static class Args {
	}
	
	static class Configuration extends OperationConfiguration {
		@Override 
		public Operation createOperation() {
			return new GetMoviesOperation();
		}
		
		@Override
		public Intent findMatchOnConstraint(OperationServiceBridge bridge, Intent intent) {
			Intent existingRequest = bridge.findPendingRequestByActionWithExtras(AbstractGetMoviesOperation.ACTION_GET_MOVIES, intent.getExtras());
			
			return existingRequest;
			
		}
	}
	
	public static final Intent newIntent() {
		Intent intent = new Intent(ACTION_GET_MOVIES);
		intent.setClass(Mechanoid.getApplicationContext(), MoviesService.class);
		
		Bundle extras = new Bundle();
		
		intent.putExtras(extras);
		
		return intent;
		
	}

	@Override
	public OperationResult execute() {
		Args args = new Args();
		Bundle extras = getIntent().getExtras();
		
		return onExecute(args);
	}
			
	protected abstract OperationResult onExecute(Args args);
}
