# report resource type

Represent an Office 365 usage report object. It is a stream, which will return a csv file.

## Methods

|Method|Return Type|Description|
|:---------------|:--------|:----------|
|Get [EmailAppUsage](../api/reportroot_emailappusage.md)|[Report](report.md)|Get all the reports of EmailAppUsage|
|Get [EmailActivity](../api/reportroot_emailactivity.md)|[Report](report.md)|Get all the reports of EmailActivity|
|Get [MailboxUsage](../api/reportroot_mailboxusage.md)|[Report](report.md)|Get all the reports of MailboxUsage|
|Get [Office365ActiveUsers](../api/reportroot_office365activeusers.md)|[Report](report.md)|Get all the reports of Office365ActiveUsers|
|Get [Office365GroupsActivity](../api/reportroot_office365groupsactivity.md)|[Report](report.md)|Get all the reports of Office365GroupsActivity|
|Get [Office365Activations](../api/reportroot_office365activations.md)|[Report](report.md)|Get all the reports of Office365Activations|
|Get [OneDriveUsage](../api/reportroot_onedriveusage.md)|[Report](report.md)|Get all the reports of OneDriveUsage|
|Get [OneDriveActivity](../api/reportroot_onedriveactivity.md)|[Report](report.md)|Get all the reports of OneDriveActivity|
|Get [SfbDeviceUsage](../api/reportroot_sfbdeviceusage.md)|[Report](report.md)|Get all the reports of SfbDeviceUsage|
|Get [SfbOrganizerActivity](../api/reportroot_sfborganizeractivity.md)|[Report](report.md)|Get all the reports of SfbOrganizerActivity|
|Get [SfbP2PActivity](../api/reportroot_sfbp2pactivity.md)|[Report](report.md)|Get all the reports of SfbP2PActivity|
|Get [SfbParticipantActivity](../api/reportroot_sfbparticipantactivity.md)|[Report](report.md)|Get all the reports of SfbParticipantActivity|
|Get [SfbActivity](../api/reportroot_sfbactivity.md)|[Report](report.md)|Get all the reports of SfbActivity|
|Get [SharePointSiteUsage](../api/reportroot_sharepointsiteusage.md)|[Report](report.md)|Get all the reports of SharePointSiteUsage|
|Get [SharePointActivity](../api/reportroot_sharepointactivity.md)|[Report](report.md)|Get all the reports of SharePointActivity|
|Get [YammerDeviceUsage](../api/reportroot_yammerdeviceusage.md)|[Report](report.md)|Get all the reports of YammerDeviceUsage|
|Get [YammerActivity](../api/reportroot_yammeractivity.md)|[Report](report.md)|Get all the reports of YammerActivity|

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|content|Stream|Represent a csv stream of Office 365 usage report. Read-only|

## Relationships

None

### CSV representation

Here is a CSV representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.Report"
}-->

```csv
Column1Name,Column2Name
column1Row0Val,column2Row0Val
column1Row1Val,column2Row1Val
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Report resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->