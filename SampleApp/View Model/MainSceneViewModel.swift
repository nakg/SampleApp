//
//  MainSceneViewModel.swift
//  SampleApp
//
//  Created by 60067670 on 2022/01/26.
//

import SwiftUI
import ComponentModule

class MainSceneViewModel: ObservableObject {
	private var _debitAccountModels = [DebitAccount]()
	
	@EnvironmentObject var store: DebitAccountStore
	
	func getAllAccounts() {
	}
}
