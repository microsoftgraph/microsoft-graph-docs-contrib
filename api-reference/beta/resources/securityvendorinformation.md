# SecurityVendorInformation resource type

Complex Type containing details about the Security product/service vendor, provider, and sub-provider (e.g. vendor=Microsoft; provider=Windows Defender ATP; sub-provider=AppLocker).

## Properties

### ( \* = Mandatory Field )

| Property   | Type|Description|
|:---------------|:--------|:----------|
|provider|String*|Specific provider (product/service - not vendor company) e.g. WindowsDefenderATP.|
|providerVersion|String|Version of the provider or subprovider, if exists, that generated the alert.|
|subProvider|String|Specific subprovider (under aggregating provider) e.g. WindowsDefenderATP.SmartScreen.|
|vendor|String*|Name of the alert vendor (e.g. Microsoft, Dell, FireEye).|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.SecurityVendorInformation"
}-->

```json
{
  "provider": "String",
  "providerVersion": "String",
  "subProvider": "String",
  "vendor": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "SecurityVendorInformation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->