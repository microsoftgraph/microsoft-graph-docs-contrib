---
title: "tiIndicator resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# tiIndicator resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tiIndicators](../api/tiindicator-list.md)|[tiIndicator](../resources/tiindicator.md) collection|Get a list of the [tiIndicator](../resources/tiindicator.md) objects and their properties.|
|[Create tiIndicator](../api/tiindicator-create.md)|[tiIndicator](../resources/tiindicator.md)|Create a new [tiIndicator](../resources/tiindicator.md) object.|
|[Get tiIndicator](../api/tiindicator-get.md)|[tiIndicator](../resources/tiindicator.md)|Read the properties and relationships of a [tiIndicator](../resources/tiindicator.md) object.|
|[Update tiIndicator](../api/tiindicator-update.md)|[tiIndicator](../resources/tiindicator.md)|Update the properties of a [tiIndicator](../resources/tiindicator.md) object.|
|[Delete tiIndicator](../api/tiindicator-delete.md)|None|Deletes a [tiIndicator](../resources/tiindicator.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|tiAction|**TODO: Add Description**. Possible values are: `unknown`, `allow`, `block`, `alert`, `unknownFutureValue`.|
|activityGroupNames|String collection|**TODO: Add Description**|
|additionalInformation|String|**TODO: Add Description**|
|azureTenantId|String|**TODO: Add Description**|
|confidence|Int32|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|diamondModel|diamondModel|**TODO: Add Description**. Possible values are: `unknown`, `adversary`, `capability`, `infrastructure`, `victim`, `unknownFutureValue`.|
|domainName|String|**TODO: Add Description**|
|emailEncoding|String|**TODO: Add Description**|
|emailLanguage|String|**TODO: Add Description**|
|emailRecipient|String|**TODO: Add Description**|
|emailSenderAddress|String|**TODO: Add Description**|
|emailSenderName|String|**TODO: Add Description**|
|emailSourceDomain|String|**TODO: Add Description**|
|emailSourceIpAddress|String|**TODO: Add Description**|
|emailSubject|String|**TODO: Add Description**|
|emailXMailer|String|**TODO: Add Description**|
|expirationDateTime|DateTimeOffset|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|fileCompileDateTime|DateTimeOffset|**TODO: Add Description**|
|fileCreatedDateTime|DateTimeOffset|**TODO: Add Description**|
|fileHashType|fileHashType|**TODO: Add Description**. Possible values are: `unknown`, `sha1`, `sha256`, `md5`, `authenticodeHash256`, `lsHash`, `ctph`, `unknownFutureValue`.|
|fileHashValue|String|**TODO: Add Description**|
|fileMutexName|String|**TODO: Add Description**|
|fileName|String|**TODO: Add Description**|
|filePacker|String|**TODO: Add Description**|
|filePath|String|**TODO: Add Description**|
|fileSize|Int64|**TODO: Add Description**|
|fileType|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|ingestedDateTime|DateTimeOffset|**TODO: Add Description**|
|isActive|Boolean|**TODO: Add Description**|
|killChain|String collection|**TODO: Add Description**|
|knownFalsePositives|String|**TODO: Add Description**|
|lastReportedDateTime|DateTimeOffset|**TODO: Add Description**|
|malwareFamilyNames|String collection|**TODO: Add Description**|
|networkCidrBlock|String|**TODO: Add Description**|
|networkDestinationAsn|Int64|**TODO: Add Description**|
|networkDestinationCidrBlock|String|**TODO: Add Description**|
|networkDestinationIPv4|String|**TODO: Add Description**|
|networkDestinationIPv6|String|**TODO: Add Description**|
|networkDestinationPort|Int32|**TODO: Add Description**|
|networkIPv4|String|**TODO: Add Description**|
|networkIPv6|String|**TODO: Add Description**|
|networkPort|Int32|**TODO: Add Description**|
|networkProtocol|Int32|**TODO: Add Description**|
|networkSourceAsn|Int64|**TODO: Add Description**|
|networkSourceCidrBlock|String|**TODO: Add Description**|
|networkSourceIPv4|String|**TODO: Add Description**|
|networkSourceIPv6|String|**TODO: Add Description**|
|networkSourcePort|Int32|**TODO: Add Description**|
|passiveOnly|Boolean|**TODO: Add Description**|
|severity|Int32|**TODO: Add Description**|
|tags|String collection|**TODO: Add Description**|
|targetProduct|String|**TODO: Add Description**|
|threatType|String|**TODO: Add Description**|
|tlpLevel|tlpLevel|**TODO: Add Description**. Possible values are: `unknown`, `white`, `green`, `amber`, `red`, `unknownFutureValue`.|
|url|String|**TODO: Add Description**|
|userAgent|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tiIndicator",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tiIndicator",
  "id": "String (identifier)",
  "action": "String",
  "activityGroupNames": [
    "String"
  ],
  "additionalInformation": "String",
  "azureTenantId": "String",
  "confidence": "Integer",
  "description": "String",
  "diamondModel": "String",
  "domainName": "String",
  "emailEncoding": "String",
  "emailLanguage": "String",
  "emailRecipient": "String",
  "emailSenderAddress": "String",
  "emailSenderName": "String",
  "emailSourceDomain": "String",
  "emailSourceIpAddress": "String",
  "emailSubject": "String",
  "emailXMailer": "String",
  "expirationDateTime": "String (timestamp)",
  "externalId": "String",
  "fileCompileDateTime": "String (timestamp)",
  "fileCreatedDateTime": "String (timestamp)",
  "fileHashType": "String",
  "fileHashValue": "String",
  "fileMutexName": "String",
  "fileName": "String",
  "filePacker": "String",
  "filePath": "String",
  "fileSize": "Integer",
  "fileType": "String",
  "ingestedDateTime": "String (timestamp)",
  "isActive": "Boolean",
  "killChain": [
    "String"
  ],
  "knownFalsePositives": "String",
  "lastReportedDateTime": "String (timestamp)",
  "malwareFamilyNames": [
    "String"
  ],
  "networkCidrBlock": "String",
  "networkDestinationAsn": "Integer",
  "networkDestinationCidrBlock": "String",
  "networkDestinationIPv4": "String",
  "networkDestinationIPv6": "String",
  "networkDestinationPort": "Integer",
  "networkIPv4": "String",
  "networkIPv6": "String",
  "networkPort": "Integer",
  "networkProtocol": "Integer",
  "networkSourceAsn": "Integer",
  "networkSourceCidrBlock": "String",
  "networkSourceIPv4": "String",
  "networkSourceIPv6": "String",
  "networkSourcePort": "Integer",
  "passiveOnly": "Boolean",
  "severity": "Integer",
  "tags": [
    "String"
  ],
  "targetProduct": "String",
  "threatType": "String",
  "tlpLevel": "String",
  "url": "String",
  "userAgent": "String"
}
```

