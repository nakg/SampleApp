//
//  MainScene.swift
//  SampleApp
//
//  Created by 60067670 on 2022/01/25.
//

import SwiftUI
import ComponentModule

struct MainScene: View {
	@EnvironmentObject var store: DebitAccountStore
	@ObservedObject private var mainSceneViewModel = MainSceneViewModel()
	
    var body: some View {
		NavigationView {
        GMDropdown_DebitAccount()
				.navigationBarTitle("My Debbit Accounts")
		}
		.onAppear {
			self.mainSceneViewModel.getAllAccounts()
		}
    }
}

struct MainScene_Previews: PreviewProvider {
    static var previews: some View {
        MainScene()
			.environmentObject(DebitAccountStore())
    }
}
