---
external help file: pstools.dataset-help.xml
Module Name: pstools.dataset
online version:
schema: 2.0.0
---

# Add-DataTableColumn

## SYNOPSIS

## SYNTAX

### Multiple (Default)
```
Add-DataTableColumn -DataTable <DataTable> -Names <String[]> [<CommonParameters>]
```

### Single
```
Add-DataTableColumn -DataTable <DataTable> -Names <String[]> [-Caption <String>] [-DefaultValue <String>]
 [-Expression <String>] [-AllowDBNull <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Add columns to data tables.
Columns can be added before or after rows have been added.

The command operates in two modes, single column or multiple columns mode.

Multiple mode
In multiple mode it is possible to provide a string array 
of column names.
This is a fast and simple way to quickly 
populate a table with empty columns.

Single mode
In single mode each call adds a single column to the table.
The difference is that when single mode is used it is 
possible to add caption, defaultvalue and expressions.

## EXAMPLES

### EXAMPLE 1
```
Add-DataTableColumn -DataTable $DataTable -Names 'Firstname','Lastname','Address','Email'
```

This example demostrates the use of multiple mode to create four columns in the DataTable object.

### EXAMPLE 2
```
Add-DataTableColumn -DataTable $DataTable -Names 'PreferredColor' -Caption 'Preferred color' -DefaultValue 'Blue'
```

This example demostrates the use of single mode to create one column with a caption and a default value.

### EXAMPLE 3
```
Add-DataTableColumn -DataTable $DataTable -Names 'Fee' -Expression '[Price] * [Amount]'
```

This example demostrates the use of single mode to create one column with an expression

## PARAMETERS

### -DataTable
Defined the DataTable that columns should be added to

```yaml
Type: DataTable
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Names
Defines the names of the columns.
This is used to reference the column in the datatable.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Caption
Sets the caption of the column.
This is used when creating table views.

```yaml
Type: String
Parameter Sets: Single
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultValue
Sets the default value of a column.
When set the cell of each row will get initialized with this default value.

```yaml
Type: String
Parameter Sets: Single
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Expression
Sets a expression to calculate the cell value.

For more information about expression variables and syntax see microsoft docs
https://docs.microsoft.com/en-us/dotnet/api/system.data.datacolumn.expression?view=net-5.0

```yaml
Type: String
Parameter Sets: Single
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowDBNull
Defaults to true, if set to false column will not allow null values

```yaml
Type: Boolean
Parameter Sets: Single
Aliases:

Required: False
Position: Named
Default value: True
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
