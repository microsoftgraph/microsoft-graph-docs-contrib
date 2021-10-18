---
title: "Create credentialUserRegistrationDetails"
description: "Create a new credentialUserRegistrationDetails object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create credentialUserRegistrationDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new credentialUserRegistrationDetails object.

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
POST /reports/credentialUserRegistrationDetails
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) object.

You can specify the following properties when creating a **credentialUserRegistrationDetails**.

|Property|Type|Description|
|:---|:---|:---|
|userPrincipalName|String|**TODO: Add Description** Required.|
|userDisplayName|String|**TODO: Add Description** Required.|
|authMethods|registrationAuthMethod collection|**TODO: Add Description**. The possible values are: `email`, `mobilePhone`, `officePhone`, `securityQuestion`, `appNotification`, `appCode`, `alternateMobilePhone`, `fido`, `appPassword`, `unknownFutureValue`. Required.|
|isRegistered|Boolean|**TODO: Add Description** Required.|
|isEnabled|Boolean|**TODO: Add Description** Required.|
|isCapable|Boolean|**TODO: Add Description** Required.|
|isMfaRegistered|Boolean|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_credentialuserregistrationdetails_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/reports/credentialUserRegistrationDetails
Content-Type: application/json
Content-length: 306

{
  "@odata.type": "#Microsoft.AAD.Reporting.credentialUserRegistrationDetails",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "authMethods": [
    "String"
  ],
  "isRegistered": "Boolean",
  "isEnabled": "Boolean",
  "isCapable": "Boolean",
  "isMfaRegistered": "Boolean"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.Reporting.credentialUserRegistrationDetails"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.AAD.Reporting.credentialUserRegistrationDetails",
  "id": "b36e53b1-53b1-b36e-b153-6eb3b1536eb3",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "authMethods": [
    "String"
  ],
  "isRegistered": "Boolean",
  "isEnabled": "Boolean",
  "isCapable": "Boolean",
  "isMfaRegistered": "Boolean"
}
```

