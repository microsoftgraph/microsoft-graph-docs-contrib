---
title: "Get teamsUserConfiguration"
description: "Read the properties and relationships of microsoft.graph.teamsAdministration.teamsUserConfiguration object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 12/03/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Get teamsUserConfiguration

Namespace: microsoft.graph.teamsAdministration



Read the properties and relationships of [microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamsadministration-teamsuserconfiguration-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-teamsuserconfiguration-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/teams/userConfigurations/{teamsUserConfigurationId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_teamsuserconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/teams/userConfigurations/{teamsUserConfigurationId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAdministration.teamsUserConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamsAdministration.teamsUserConfiguration",
    "id": "5c802b19-3600-83f1-1767-7b9edc7f38ab",
    "userPrincipalName": "String",
    "tenantId": "String",
    "effectivePolicyAssignments": [
      {
        "@odata.type": "microsoft.graph.teamsAdministration.effectivePolicyAssignment"
      }
    ],
    "telephoneNumbers": [
      {
        "@odata.type": "microsoft.graph.teamsAdministration.assignedTelephoneNumber"
      }
    ],
    "isEnterpriseVoiceEnabled": "Boolean",
    "featureTypes": [
      "String"
    ],
    "accountType": "String",
    "createdDateTime": "String (timestamp)",
    "modifiedDateTime": "String (timestamp)"
  }
}
```

