New-PSDrive -Name "H" -Root "\\192.168.100.40\lvol01_folder\HouseHold" -Persist -PSProvider "FileSystem" -Credential admin
New-PSDrive -Name "P" -Root "\\192.168.100.40\lvol01_folder\Publico" -Persist -PSProvider "FileSystem" -Credential admin
New-PSDrive -Name "U" -Root "\\192.168.100.40\lvol01_folder\Users" -Persist -PSProvider "FileSystem" -Credential admin
#New-PSDrive -Name "A" -Root "\\192.168.100.40\lvol01_folder\Admfin" -Persist -PSProvider "FileSystem" -Credential admin
#New-PSDrive -Name "B" -Root "\\192.168.100.40\lvol01_folder\Bei" -Persist -PSProvider "FileSystem" -Credential admin
#New-PSDrive -Name "G" -Root "\\192.168.100.40\lvol01_folder\Gestao" -Persist -PSProvider "FileSystem" -Credential admin
#New-PSDrive -Name "J" -Root "\\192.168.100.40\lvol01_folder\Jobs" -Persist -PSProvider "FileSystem" -Credential admin
#New-PSDrive -Name "M" -Root "\\192.168.100.40\lvol01_folder\midias" -Persist -PSProvider "FileSystem" -Credential admin
#New-PSDrive -Name "S" -Root "\\192.168.100.40\lvol01_folder\Scanner" -Persist -PSProvider "FileSystem" -Credential admin

#Só Raquel:
#New-PSDrive -Name "D" -Root "\\192.168.100.10\Departamento" -Persist -PSProvider "FileSystem"