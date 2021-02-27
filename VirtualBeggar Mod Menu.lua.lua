local gg = gg
 gg.alert('🔥Initalizing Menu')

function START()
menu = gg.multiChoice ({
'💳VC',
'💰Coins',
'🆙Exp',
'🎁Gifts', 
'❌Quit' },
 nil, '👑Virtual Beggar Menu')
if menu == nil then
gg.alert('➖Menu Minimized')
else
if menu [1] then VCS() end
if menu [2] then Coins() end
if menu [3] then Exp() end
if menu [4] then Gifts() end
if menu [5] then Credits() end
if menu [6] then Exit() end
end
end

function VCS()
gg.alert('✔️(Exchange 100 VC for coins)')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;5;20;50;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-99999999", gg.TYPE_DWORD)
gg.clearResults()
gg.processResume()

end

function Coins()
gg.alert('✔️(Exchange 1 VC for Coins)')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5000;30000;140000;400000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("5000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999999999", gg.TYPE_DWORD)
gg.clearResults()
gg.processResume()
end

function Exp()
gg.alert('✔️ (Use a ride for Xp)')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("520000;26250000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999999999", gg.TYPE_DWORD)
gg.clearResults()
gg.processResume()
end

function Gifts()
gg.alert('Gift Timer Reset (Relaunch game)')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("38000~43200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.sleep('1000')
gg.searchFuzzy("0", gg.SIGN_FUZZY_LESS, gg.TYPE_DWORD, 0, -1, 0)
gg.sleep('1000')
gg.searchFuzzy("0", gg.SIGN_FUZZY_LESS, gg.TYPE_DWORD, 0, -1, 0)
gg.sleep('1000')
gg.searchFuzzy("0", gg.SIGN_FUZZY_LESS, gg.TYPE_DWORD, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)
end

function Quit()
gg.setVisible(true)
 os.exit(print("☠️Menu Closed")) 
 end 
 
 while true do
 if gg.isVisible() then 
 gg.setVisible(false)
  START()
  end 
  end