# fileSecurityProfile resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Defines the relevant security properties of files to provide additional context for alerts and targets for actions.

Security profiles are populated by integrated solutions at their discretion. For example:

- A solution will populate hostSecurityProfile for any desktop, laptop, server, firewall, or other endpoint that their service is responsible for monitoring, alerting, or taking threat remediation actions against.
- A provider will populate **ipSecurityProfile** for a collected set of IP addresses that their service is responsible for isolating, monitoring, or configuring.

## Methods

| Method   | Return Type |Description|
|:---------------|:--------|:----------|
|[Get a file security profile](../api/filesecurityprofile_get.md) | [fileSecurityProfile](filesecurityprofile.md) |Read properties and relationships of a fileSecurityProfile object.|
|[Update a file security profile](../api/filesecurityprofile_update.md) | [fileSecurityProfile](filesecurityprofile.md)|Update a fileSecurityProfile object. |
|[List file security profiles](../api/filesecurityprofile_list.md) |[fileSecurityProfile](filesecurityprofile.md) collection| Get a fileSecurityProfile object collection.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|authenticodeHash256|String|Authenticode 256 hash of file (used by applocker and others).|
|azureSubscriptionId|String|Azure subscription ID of the entity, if this entity represents an Azure resource.|
|azureTenantId *|String|Azure Active Directory tenant ID of this resource.|
|certificateThumbprint|String|Code sign certificate thumbprint.|
|createdDateTime *|DateTimeOffset|Time at which the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|id *|String|Provider-generated GUID/unique identifier. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Time at which the entity was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|md5|String|Md5 hash of file.|
|name|String|Filename without path.|
|path|String|The full path of the file.|
|riskScore|String|Provider-calculated risk score of the file.|
|sha1|String|Cryptographic (Sha1) hash of file.|
|sha256|String|Sha256 cryptographic hash of file.|
|size|Int64|File size.|
|tags|String collection|User-definable labels that can be applied to an alert and can serve as filter conditions (for example "HVA", "SAW", etc.) (supports [update](../api/filesecurityprofile_update.md)).|
|vendorInformation *|[securityVendorInformation](securityvendorinformation.md)|Complex type containing details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=Windows Defender ATP; subProvider=AppLocker).|
(\* Indicates a mandatory field.)

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fileSecurityProfile"
}-->

```json
{
  "authenticodeHash256": "String",
  "azureSubscriptionId": "String",
  "azureTenantId": "String",
  "certificateThumbprint": "String",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "md5": "String",
  "name": "String",
  "path": "String",
  "riskScore": "String",
  "sha1": "String",
  "sha256": "String",
  "size": 1024,
  "tags": ["String"],
  "vendorInformation": {"@odata.type": "microsoft.graph.securityVendorInformation"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "fileSecurityProfile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
