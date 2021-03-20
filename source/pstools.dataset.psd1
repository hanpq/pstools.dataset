@{
  RootModule = 'PS.Tools.DataSet.psm1'
  ModuleVersion = '1.2.36'
  CompatiblePSEditions = @('Desktop','Core')
  GUID = 'a0e2a1b6-0a1d-4a6f-bf07-ff45a1d75e20'
  Author = 'Hannes Palmquist'
  CompanyName = ''
  Copyright = '(c) 2020 Hannes Palmquist. All rights reserved.'
  Description = 'Tools for managing a .NET system data set'
  RequiredModules = @()
  FunctionsToExport = @('Add-DataSetRelation','Add-DataSetTable','Add-DataTableColumn','Add-DataTableRow','Get-DataTableRow','New-DataSet','New-DataTable')
  FileList = @('.\data\appicon.ico','.\data\banner.ps1','.\docs\pstools.dataset.md','.\include\module.utility.functions.ps1','.\public\Add-DataSetRelation.ps1','.\public\Add-DataSetTable.ps1','.\public\Add-DataTableColumn.ps1','.\public\Add-DataTableRow.ps1','.\public\Get-DataTableRow.ps1','.\public\New-DataSet.ps1','.\public\New-DataTable.ps1','.\settings\config.json','.\LICENSE.txt','.\pstools.dataset.psd1','.\pstools.dataset.psm1')
  PrivateData = @{
    ModuleName = 'PS.Tools.DataSet'
    DateCreated = '2020-10-13'
    LastBuildDate = '2021-03-20'
    PSData = @{
      Tags = @('PSEdition_Desktop','PSEdition_Core','Windows','Linux','MacOS')
      ProjectUri = 'https://getps.dev/modules/PS.Tools.DataSet/quickstart'
      LicenseUri = 'https://github.com/hanpq/PS.Tools.DataSet/blob/main/LICENSE'
      ReleaseNotes = ''
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



