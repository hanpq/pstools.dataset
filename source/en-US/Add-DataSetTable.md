---
external help file: pstools.dataset-help.xml
Module Name: pstools.dataset
online version:
schema: 2.0.0
---

# Add-DataSetTable

## SYNOPSIS

## SYNTAX

```
Add-DataSetTable [-DataSet] <DataSet> [-DataTable] <DataTable> [<CommonParameters>]
```

## DESCRIPTION
Add DataTable to a DataSet

## EXAMPLES

### EXAMPLE 1
```
Add-DataSetTable -DataSet $DataSet -DataTable $DataTable
```

This example shows how to add a datatable object to a dataset

## PARAMETERS

### -DataSet
Supply the dataset object

```yaml
Type: DataSet
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DataTable
Supply the datatable that should be added to the dataset

```yaml
Type: DataTable
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
