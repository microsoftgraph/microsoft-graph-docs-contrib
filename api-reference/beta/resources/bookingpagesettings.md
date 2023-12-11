---
title: "bookingPageSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# bookingPageSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessControl|bookingPageAccessControl|**TODO: Add Description**.The possible values are: `unrestricted`, `restrictedToOrganization`, `unknownFutureValue`.|
|bookingPageColorCode|String|**TODO: Add Description**|
|businessTimeZone|String|**TODO: Add Description**|
|customerConsentMessage|String|**TODO: Add Description**|
|enforceOneTimePassword|Boolean|**TODO: Add Description**|
|isBusinessLogoDisplayEnabled|Boolean|**TODO: Add Description**|
|isCustomerConsentEnabled|Boolean|**TODO: Add Description**|
|isSearchEngineIndexabilityDisabled|Boolean|**TODO: Add Description**|
|isTimeSlotTimeZoneSetToBusinessTimeZone|Boolean|**TODO: Add Description**|
|privacyPolicyWebUrl|String|**TODO: Add Description**|
|termsAndConditionsWebUrl|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bookingPageSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingPageSettings",
  "privacyPolicyWebUrl": "String",
  "termsAndConditionsWebUrl": "String",
  "enforceOneTimePassword": "Boolean",
  "accessControl": "String",
  "isCustomerConsentEnabled": "Boolean",
  "customerConsentMessage": "String",
  "isBusinessLogoDisplayEnabled": "Boolean",
  "isSearchEngineIndexabilityDisabled": "Boolean",
  "bookingPageColorCode": "String",
  "businessTimeZone": "String",
  "isTimeSlotTimeZoneSetToBusinessTimeZone": "Boolean"
}
```

