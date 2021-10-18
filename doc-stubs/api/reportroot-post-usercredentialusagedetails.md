---
title: "Create userCredentialUsageDetails"
description: "Create a new userCredentialUsageDetails object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create userCredentialUsageDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new userCredentialUsageDetails object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /reports/userCredentialUsageDetails
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) object.

You can specify the following properties when creating a **userCredentialUsageDetails**.

|Property|Type|Description|
|:---|:---|:---|
|feature|featureType|**TODO: Add Description**. The possible values are: `registration`, `reset`, `unknownFutureValue`. Required.|
|userPrincipalName|String|**TODO: Add Description** Required.|
|userDisplayName|String|**TODO: Add Description** Required.|
|isSuccess|Boolean|**TODO: Add Description** Required.|
|authMethod|usageAuthMethod|**TODO: Add Description**. The possible values are: `email`, `mobileSMS`, `mobileCall`, `officePhone`, `securityQuestion`, `appNotification`, `appCode`, `alternateMobileCall`, `fido`, `appPassword`, `unknownFutureValue`. Required.|
|failureReason|String|**TODO: Add Description** Required.|
|eventDateTime|DateTimeOffset|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_usercredentialusagedetails_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/reports/userCredentialUsageDetails
Content-Type: application/json
Content-length: 292

{
  "@odata.type": "#Microsoft.AAD.Reporting.userCredentialUsageDetails",
  "feature": "String",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "isSuccess": "Boolean",
  "authMethod": "String",
  "failureReason": "String",
  "eventDateTime": "String (timestamp)"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.Reporting.userCredentialUsageDetails"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.AAD.Reporting.userCredentialUsageDetails",
  "id": "14e6441c-441c-14e6-1c44-e6141c44e614",
  "feature": "String",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "isSuccess": "Boolean",
  "authMethod": "String",
  "failureReason": "String",
  "eventDateTime": "String (timestamp)"
}
```

