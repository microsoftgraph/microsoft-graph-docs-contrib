---
title: "List userConfigurations"
description: "Get user configurations for all Teams users who belong to a tenant."
author: "praspatil05"
ms.date: 12/03/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# List userConfigurations

Namespace: microsoft.graph.teamsAdministration

Get [user configurations](../resources/teamsadministration-teamsuserconfiguration.md) for all Teams users who belong to a tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamsadministration_teamsadminroot_list_userconfigurations" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-teamsadminroot-list-userconfigurations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/teams/userConfigurations
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$top`, `$expand`, and `$orderBy` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_teamsuserconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/teams/userConfigurations
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
  "value": [
    {
      "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#admin/teams/userConfigurations",
      "id": "5c802b19-3600-83f1-1767-7b9edc7f38ab",
      "userPrincipalName": "AdeleV@contoso.com",
      "tenantId": "87d349ed-44d7-43e1-9a83-5f2406dee5bd",
      "effectivePolicyAssignments": [
        {
          "policyType": "TeamsCallingPolicy",
          "policyAssignment": {
            "displayName": "AllOn",
            "assignmentType": "group",
            "policyId": "f7593e81-772a-4455-88a3-fc9e5ebc1e4a",
            "groupId": "75ae6229-35fe-4b01-ae7f-7c50439d239c"
          }
        },
        {
          "policyType": "TeamsMeetingPolicy",
          "policyAssignment": {
            "displayName": "CustomPolicy",
            "assignmentType": "direct",
            "policyId": "J93PmFHwFcLZhWfYcBlv9pn-hG-kUWkcxmkDvpwgacw"
          }
        }
      ],
      "telephoneNumbers": [
        {
          "telephoneNumber": "+13235533696",
          "assignmentCategory": "primary"
        }
      ],
      "isEnterpriseVoiceEnabled": false,
      "featureTypes": [
        "Teams",
        "CallingPlan"
      ],
      "accountType": "user",
      "createdDateTime": "2025-01-07T09:08:50.9115993Z",
      "modifiedDateTime": "2025-01-07T09:08:50.9115993Z"
    }
  ]
}
```

