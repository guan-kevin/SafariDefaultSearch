//
//  SafariExtensionHandler.swift
//  SafariDefaultSearch Extension
//
//  Created by Kevin Guan on 6/8/21.
//

import SafariServices

class SafariExtensionHandler: SFSafariExtensionHandler {
    override func page(_ page: SFSafariPage, willNavigateTo url: URL?) {
        if let url = url {
            if url.absoluteString.starts(with: "https://www.ecosia.org/") {
                page.getContainingTab { tab in
                    tab.navigate(to: URL(string: url.absoluteString.replacingOccurrences(of: "www.ecosia.org", with: "www.startpage.com")) ?? url)
                }
            }
        }
    }
}
