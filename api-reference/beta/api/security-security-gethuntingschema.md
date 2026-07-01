---
title: "security: getHuntingSchema"
description: "Retrieve the advanced hunting schema accessible to the signed-in user."
author: "nitzanfrogel"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 05/13/2026
---

# security: getHuntingSchema

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the advanced hunting schema accessible to the signed-in user, including the tables and functions the user is authorized to query and invoke in [advanced hunting](/microsoft-365/security/defender/advanced-hunting-overview?view=o365-worldwide&preserve-view=true) with Microsoft Defender XDR.

The returned schema reflects the user's effective permissions. Each user within a tenant may have a different effective schema depending on their role and access level.

Common use cases include:

- **Preventing unauthorized queries**: Determine which tables and functions a user can access before executing Kusto queries, reducing the risk of authorization failures.
- **Permission-aware query generation**: Enable applications and tools to construct queries dynamically based on the user's effective schema.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-gethuntingschema-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-security-gethuntingschema-permissions.md)]

>[!IMPORTANT]
> The signed-in user must also be assigned a [Microsoft Defender XDR Unified RBAC role](/microsoft-365/security/defender/manage-rbac) that grants permission to run advanced hunting queries, or one of the following Microsoft Entra ID roles which provide only the least privilege necessary: **Security Reader**, **Security Operator**, **Security Administrator**.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/getHuntingSchema
```

## Function parameters

This method doesn't support any OData query parameters to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [huntingSchemaResult](../resources/security-huntingschemaresult.md) in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_gethuntingschema"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/getHuntingSchema
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-gethuntingschema-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-gethuntingschema-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-gethuntingschema-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-gethuntingschema-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-gethuntingschema-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-gethuntingschema-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.huntingSchemaResult",
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "tables": [
    {
      "name": "DeviceProcessEvents",
      "description": "Process creation and related events",
      "columns": [
        {
          "name": "Timestamp",
          "dataType": "DateTime",
          "description": "Date and time when the record was generated"
        },
        {
          "name": "DeviceId",
          "dataType": "String",
          "description": "Unique identifier for the device in the service"
        },
        {
          "name": "DeviceName",
          "dataType": "String",
          "description": "Fully qualified domain name (FQDN) of the device"
        }
      ]
    },
    {
      "name": "DeviceNetworkEvents",
      "description": "Network connection and related events",
      "columns": [
        {
          "name": "Timestamp",
          "dataType": "DateTime",
          "description": "Date and time when the record was generated"
        },
        {
          "name": "DeviceId",
          "dataType": "String",
          "description": "Unique identifier for the device in the service"
        }
      ]
    }
  ],
  "functions": {
    "builtInFunctions": [
      {
        "huntingFunctionId": 1,
        "name": "FileProfile",
        "path": "Built-in",
        "documentation": "Enriches query results with file information such as file name, size, and hash.",
        "inputParameters": [
          {
            "name": "SHA1",
            "cslType": "string",
            "defaultValue": null
          }
        ],
        "outputColumns": [
          {
            "name": "SHA1",
            "dataType": "String",
            "description": "SHA-1 hash of the file"
          },
          {
            "name": "SHA256",
            "dataType": "String",
            "description": "SHA-256 hash of the file"
          }
        ]
      }
    ],
    "savedFunctions": [
      {
        "huntingFunctionId": 100,
        "name": "MyCustomQuery",
        "path": "Shared",
        "description": "A custom query that filters device events by severity.",
        "createdBy": "user@contoso.com",
        "lastModifiedBy": "user@contoso.com",
        "lastModifiedDateTime": "2026-04-15T10:30:00Z",
        "inputParameters": [],
        "outputColumns": [
          {
            "name": "DeviceId",
            "dataType": "String",
            "description": "Unique identifier for the device"
          }
        ]
      }
    ]
  }
}
```

