---
title: "reportRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get reportRoot](../api/reportroot-get.md)|[reportRoot](../resources/reportroot.md)|Read the properties and relationships of a [reportRoot](../resources/reportroot.md) object.|
|[Update reportRoot](../api/reportroot-update.md)|[reportRoot](../resources/reportroot.md)|Update the properties of a [reportRoot](../resources/reportroot.md) object.|
|[List applicationSignInDetailedSummary](../api/reportroot-list-applicationsignindetailedsummary.md)|[applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) collection|Get the applicationSignInDetailedSummary resources from the applicationSignInDetailedSummary navigation property.|
|[Create applicationSignInDetailedSummary](../api/reportroot-post-applicationsignindetailedsummary.md)|[applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md)|Create a new applicationSignInDetailedSummary object.|
|[List credentialUserRegistrationDetails](../api/reportroot-list-credentialuserregistrationdetails.md)|[credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) collection|Get the credentialUserRegistrationDetails resources from the credentialUserRegistrationDetails navigation property.|
|[Create credentialUserRegistrationDetails](../api/reportroot-post-credentialuserregistrationdetails.md)|[credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md)|Create a new credentialUserRegistrationDetails object.|
|[List userCredentialUsageDetails](../api/reportroot-list-usercredentialusagedetails.md)|[userCredentialUsageDetails](../resources/usercredentialusagedetails.md) collection|Get the userCredentialUsageDetails resources from the userCredentialUsageDetails navigation property.|
|[Create userCredentialUsageDetails](../api/reportroot-post-usercredentialusagedetails.md)|[userCredentialUsageDetails](../resources/usercredentialusagedetails.md)|Create a new userCredentialUsageDetails object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicationSignInDetailedSummary|[applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) collection|**TODO: Add Description**|
|authenticationMethods|[authenticationMethodsRoot](../resources/authenticationmethodsroot.md)|**TODO: Add Description**|
|credentialUserRegistrationDetails|[credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) collection|**TODO: Add Description**|
|userCredentialUsageDetails|[userCredentialUsageDetails](../resources/usercredentialusagedetails.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot"
}
```

