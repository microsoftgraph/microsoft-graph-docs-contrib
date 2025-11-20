---
title: "Get teamsUserConfiguration"
description: "Read the Teams user configurations for a specific user using their ID (the user's identifier)."
author: "praspatil05"
ms.date: 03/19/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Get teamsUserConfiguration

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the Teams user configurations for a specific user using their ID (the user's identifier).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamsadministration_teamsuserconfiguration_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-teamsuserconfiguration-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /admin/teams/userConfigurations/{teamsUserConfigurationId}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_teamsuserconfiguration",
  "sampleKeys": ["5c802b19-3600-83f1-1767-7b9edc7f38ab"]
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/teams/userConfigurations/5c802b19-3600-83f1-1767-7b9edc7f38ab
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-teamsuserconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-teamsuserconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-teamsuserconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-teamsuserconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-teamsuserconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-teamsuserconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAdministration.teamsUserConfiguration"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/teams/userConfigurations/$entity",   
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
}
```
