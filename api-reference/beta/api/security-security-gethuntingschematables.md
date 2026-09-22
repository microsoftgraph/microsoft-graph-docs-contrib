---
title: "security: getHuntingSchemaTables"
description: "Retrieve the advanced hunting tables accessible to the signed-in user."
author: "Nnachtomy"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 08/22/2026
---

# security: getHuntingSchemaTables

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve only the advanced hunting tables that the signed-in user is authorized to query in [advanced hunting](/microsoft-365/security/defender/advanced-hunting-overview?view=o365-worldwide&preserve-view=true) with Microsoft Defender XDR.

The returned tables reflect the user's effective permissions. Each user within a tenant might have a different effective set of tables depending on their role and access level.

Unlike [getHuntingSchema](security-security-gethuntingschema.md), which returns both tables and functions in a single [huntingSchemaResult](../resources/security-huntingschemaresult.md), this function returns the tables as a collection. Because the result is a collection, you can apply OData query parameters such as `$filter`, `$select`, and `$top` to retrieve only the tables and columns you need.

Common use cases include:

- **Preventing unauthorized queries**: Determine which tables a user can access before running a hunting query, which reduces the risk of authorization failures.
- **Permission-aware query generation**: Enable applications and tools to construct queries dynamically based on the tables available to the user.
- **Retrieving a targeted subset**: Use OData query parameters to request specific tables instead of the full schema.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-gethuntingschematables-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-security-gethuntingschematables-permissions.md)]

>[!IMPORTANT]
> The signed-in user must also be assigned a [Microsoft Defender XDR Unified RBAC role](/microsoft-365/security/defender/manage-rbac) that grants permission to run advanced hunting queries, or one of the following Microsoft Entra ID roles which provide only the least privilege necessary: **Security Reader**, **Security Operator**, **Security Administrator**.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/getHuntingSchemaTables
GET /security/getHuntingSchemaTables(workspaceId={workspaceId})
```

## Function parameters

In the request URL, provide the following optional function parameter with values.

|Parameter|Type|Description|
|:---|:---|:---|
|workspaceId|Guid|Optional. The identifier of the workspace to scope the tables to. If you don't specify this parameter, the default workspace is used.|

This function supports the `$count`, `$filter`, `$select`, `$skip`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|****** Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [microsoft.graph.security.huntingSchemaTable](../resources/security-huntingschematable.md) objects in the response body.

## Examples

### Example 1: Retrieve all accessible hunting tables

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "security_gethuntingschematables"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/getHuntingSchemaTables
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.security.huntingSchemaTable)",
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.security.huntingSchemaTable)",
  "value": [
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
  ]
}
```

### Example 2: Retrieve the tables for a specific workspace

#### Request

The following example scopes the request to a single workspace.

<!-- {
  "blockType": "request",
  "name": "security_gethuntingschematables_workspaceid"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/getHuntingSchemaTables(workspaceId=8fb6e2d6-1b0a-4d0b-9d9f-9f3e2a5c7b21)
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.security.huntingSchemaTable)",
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.security.huntingSchemaTable)",
  "value": [
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
        }
      ]
    }
  ]
}
```

### Example 3: Retrieve only the names of the accessible tables

#### Request

The following example uses the `$select` query parameter to return only the table names.

<!-- {
  "blockType": "request",
  "name": "security_gethuntingschematables_select"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/getHuntingSchemaTables?$select=name
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.security.huntingSchemaTable)",
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.security.huntingSchemaTable)",
  "value": [
    {
      "name": "DeviceProcessEvents"
    },
    {
      "name": "DeviceNetworkEvents"
    }
  ]
}
```
