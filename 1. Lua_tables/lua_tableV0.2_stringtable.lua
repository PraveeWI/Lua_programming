material_info_table={}
local function addHeader()

  tableItem = {}
  -- tableItem.Shift_id="SHIFT"
  tableItem.Material_no="NO"
  tableItem.Material_name ="NAME" 
  tableItem.Weight_val ="WEIGHT"
  
  table.insert(material_info_table, tableItem )
  
end

addHeader()
tableItem = {}  
-- tableItem.Shift_id =shift_id
tableItem.Material_no=1
tableItem.Material_name = 'Flour'
-- tableItem.Reg_name =reg_name_material
tableItem.Weight_val ='250 kg'

table.insert(material_info_table, tableItem )


tableItem = {}
-- tableItem.Shift_id =shift_id
tableItem.Material_no=2
tableItem.Material_name = 'Sugar'
-- tableItem.Reg_name =reg_name_material
tableItem.Weight_val ='200 kg'

table.insert(material_info_table, tableItem )
-- local shiftRecords=''
local shiftRecordsAll=''
-- Print whole table
local function printTable(print_table)

  for key, value in ipairs(print_table) 
    do
      -- print(key, value.Material_no,value.Material_name,value.Weight_val)
      
      local shiftRecords = table.concat({value.Material_no,'\t',value.Material_name,'\t',value.Weight_val,'\n'})
    shiftRecordsAll = table.concat({shiftRecordsAll,'\n',shiftRecords})
    
    
    
  end

end

printTable(material_info_table)
print(shiftRecordsAll)

-- local t = {}

-- print(shiftRecords)

-- NO  NAME    WEIGHT

-- 1   Flour   250 kg

-- 2   Sugar   200 kg
