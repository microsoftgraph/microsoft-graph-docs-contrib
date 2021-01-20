---
title: "reportRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get reportRoot](../api/reportroot-get.md)|[reportRoot](../resources/reportroot.md)|Read the properties and relationships of a [reportRoot](../resources/reportroot.md) object.|
|[Update reportRoot](../api/reportroot-update.md)|[reportRoot](../resources/reportroot.md)|Update the properties of a [reportRoot](../resources/reportroot.md) object.|
|[List authenticationMethodsRoot](../api/reportroot-list-authenticationmethods.md)|[authenticationMethodsRoot](../resources/authenticationmethodsroot.md) collection|Get the authenticationMethodsRoot resources from the authenticationMethods navigation property.|
|[Create authenticationMethodsRoot](../api/reportroot-post-authenticationmethods.md)|[authenticationMethodsRoot](../resources/authenticationmethodsroot.md)|Create a new authenticationMethodsRoot object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicationSignInDetailedSummary|[applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) collection|**TODO: Add Description**|
|authenticationMethods|[authenticationMethodsRoot](../resources/authenticationmethodsroot.md)|**TODO: Add Description**|
|credentialUserRegistrationDetails|[credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) collection|**TODO: Add Description**|
|dailyPrintUsageSummariesByPrinter|[PrintUsageSummaryByPrinter](../resources/printusagesummarybyprinter.md) collection|**TODO: Add Description**|
|dailyPrintUsageSummariesByUser|[PrintUsageSummaryByUser](../resources/printusagesummarybyuser.md) collection|**TODO: Add Description**|
|monthlyPrintUsageSummariesByPrinter|[PrintUsageSummaryByPrinter](../resources/printusagesummarybyprinter.md) collection|**TODO: Add Description**|
|monthlyPrintUsageSummariesByUser|[PrintUsageSummaryByUser](../resources/printusagesummarybyuser.md) collection|**TODO: Add Description**|
|userCredentialUsageDetails|[userCredentialUsageDetails](../resources/usercredentialusagedetails.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot",
  "id": "String (identifier)"
}
```

