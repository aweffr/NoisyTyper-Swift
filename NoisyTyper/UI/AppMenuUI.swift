//
//  AppMenuUI.swift
//  NoisyTyper
//
//  Created by iAladdin on 2019/9/19.
//  Copyright © 2019 Aladdin. All rights reserved.
//

import Cocoa

extension AppDelegate{
    func createMenu(){
        self.menuItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        self.menuItem?.title = ""
        let image = NSImage(named: "menuItem")
        image?.isTemplate = true
        self.menuItem?.image = image
        self.menuItem?.highlightMode = true
        
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Volume", action: nil, keyEquivalent: ""))
        let soundSliderItem = createVolumeItem(target: self,selector: #selector(configVolume),volumeLevel: self.volumeLevel)
        menu.addItem(soundSliderItem)
        menu.addItem(NSMenuItem.separator())
        
        
        let themeMenuItem = NSMenuItem(title: "SFX", action: nil, keyEquivalent: "")
        menu.addItem(themeMenuItem)
        
        loadThemes(menu)
    
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title:"Gallery", action: #selector(showStore), keyEquivalent:","))
        
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title:"Quit", action: #selector(exit), keyEquivalent:""))

        self.menuItem?.menu = menu
    }
}
