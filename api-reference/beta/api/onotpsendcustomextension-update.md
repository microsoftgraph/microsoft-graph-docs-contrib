---
title: "Update onOtpSendCustomExtension"
description: "Update the properties of an onOtpSendCustomExtension object."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 01/09/2024
---

# Update onOtpSendCustomExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onotpsendcustomextension-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onotpsendcustomextension-update-permissions.md)]

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onEmailOtpSendListener/handler/microsoft.graph.onOtpSendCustomExtensionHandler/customExtension/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for this custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The connection settings that define how long Microsoft Entra ID can wait for a response from an external app. After this time, Microsoft Entra ID shuts down the connection when trying to trigger the external app. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|description|String|The description for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|displayName|String|The display name for the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The configuration for the API endpoint that the custom extension calls. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|behaviorOnError|[customExtensionBehaviorOnError](../resources/customextensionbehavioronerror.md)|Let to configure behavior if the call to custom authentication extension returns error. Inherited from [customAuthenticationExtension](../resources/customauthenticationextension.md). Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_onotpsendcustomextension"
}
-->
``` http
PUT /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onEmailOtpSendListener/handler/microsoft.graph.onOtpSendCustomExtensionHandler/customExtension/$ref
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.onOtpSendCustomExtension",
  "authenticationConfiguration": {
    "@odata.type": "microsoft.graph.azureAdTokenAuthentication",
    "resourceId": "api://customonemailprovider.azurwebsites.net/f9c5dc6b-d72b-4226-8ccd-801f7a290428"
  },
  "clientConfiguration": {
    "timeoutInMilliseconds": 1000,
    "maximumRetries": 1,
  },
  "description": "Sends OTP Code via ACS.",
  "displayName": "ACS Emails",
  "endpointConfiguration": {
    "@odata.type": "microsoft.graph.httpRequestEndpoint"
 	  "targetUrl": "https://customonemailprovider.azurewebsites.net/api/sendOneTimeCode"
  },
  "behaviorOnError": {
    "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
  "@odata.type": "microsoft.graph.onOtpSendCustomExtension"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.onOtpSendCustomExtension",
  "id": "1c8b03b2-7663-fbe9-960a-bc541decd469",
  "authenticationConfiguration": {
    "@odata.type": "microsoft.graph.azureAdTokenAuthentication",
    "resourceId": "api://customonemailprovider.azurwebsites.net/f9c5dc6b-d72b-4226-8ccd-801f7a290428"
  },
  "clientConfiguration": {
    "timeoutInMilliseconds": 1000,
    "maximumRetries": 1,
  },
  "description": "Sends OTP Code via ACS.",
  "displayName": "ACS Emails",
  "endpointConfiguration": {
    "@odata.type": "microsoft.graph.httpRequestEndpoint"
 	  "targetUrl": "https://customonemailprovider.azurewebsites.net/api/sendOneTimeCode"
  },
  "behaviorOnError": {
    "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
  }
}
```

