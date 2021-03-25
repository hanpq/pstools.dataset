@{
  RootModule = 'pstools.dataset.psm1'
  ModuleVersion = '1.5.2'
  CompatiblePSEditions = @('Desktop','Core')
  GUID = 'a0e2a1b6-0a1d-4a6f-bf07-ff45a1d75e20'
  Author = 'Hannes Palmquist'
  CompanyName = ''
  Copyright = '(c) 2020 Hannes Palmquist. All rights reserved.'
  Description = 'Tools for managing a .NET system data set'
  RequiredModules = @()
  FunctionsToExport = @('Add-DataSetRelation','Add-DataSetTable','Add-DataTableColumn','Add-DataTableRow','Get-DataTableRow','New-DataSet','New-DataTable')
  FileList = @('.\data\appicon.ico','.\data\banner.ps1','.\docs\pstools.dataset.md','.\en-US\Add-DataSetRelation.md','.\en-US\Add-DataSetTable.md','.\en-US\Add-DataTableColumn.md','.\en-US\Add-DataTableRow.md','.\en-US\Get-DataTableRow.md','.\en-US\New-DataSet.md','.\en-US\New-DataTable.md','.\en-US\pstools.dataset-help.xml','.\include\module.utility.functions.ps1','.\private\.gitignore','.\public\Add-DataSetRelation.ps1','.\public\Add-DataSetTable.ps1','.\public\Add-DataTableColumn.ps1','.\public\Add-DataTableRow.ps1','.\public\Get-DataTableRow.ps1','.\public\New-DataSet.ps1','.\public\New-DataTable.ps1','.\settings\config.json','.\LICENSE.txt','.\pstools.dataset.psd1','.\pstools.dataset.psm1')
  PrivateData = @{
    ModuleName = 'pstools.dataset'
    DateCreated = '2020-10-13'
    LastBuildDate = '2021-03-25'
    PSData = @{
      Tags = @('PSEdition_Desktop','PSEdition_Core','Windows','Linux','MacOS')
      ProjectUri = 'https://getps.dev/modules/pstools.dataset/quickstart'
      LicenseUri = 'https://github.com/hanpq/pstools.dataset/blob/main/LICENSE'
      ReleaseNotes = 'https://github.com/hanpq/pstools.dataset/blob/main/changelog.json'
      IsPrerelease = 'False'
      IconUri = ''
      PreRelease = ''
      RequireLicenseAcceptance = $True
      ExternalModuleDependencies = @()
    }
  }
  CmdletsToExport = @()
  VariablesToExport = @()
  AliasesToExport = @()
  DscResourcesToExport = @()
  ModuleList = @()
  RequiredAssemblies = @()
  ScriptsToProcess = @()
  TypesToProcess = @()
  FormatsToProcess = @()
  NestedModules = @()
  HelpInfoURI = ''
  DefaultCommandPrefix = ''
  PowerShellVersion = '5.1'
  PowerShellHostName = ''
  PowerShellHostVersion = ''
  DotNetFrameworkVersion = ''
  CLRVersion = ''
  ProcessorArchitecture = ''
}




