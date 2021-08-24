---
title: "crossTenantAccessPolicyConfigurationDefault: resetToSystemDefault"
description: "**TODO: Add Description**"
author: "Reset any changes made to the default configuration in a cross tenant access policy back to the system default."
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# crossTenantAccessPolicyConfigurationDefault: resetToSystemDefault

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reset any changes made to the default configuration in a cross tenant access policy back to the system default.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.CrossTenantAccess|
|Delegated (personal Microsoft account)|Not applicable|
|Application|Policy.ReadWrite.CrossTenantAccess|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /policies/crossTenantAccessPolicy/default/resetToSystemDefault
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a Boolean in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "crosstenantaccesspolicyconfigurationdefault_resettosystemdefault"
}
-->

``` http
POST https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/default/resetToSystemDefault
```

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Boolean"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isServiceDefault": true,
  "inboundTrust":
  {
    "isMfaAccepted": false,
    "isCompliantDeviceAccepted": false,
    "isHybridAzureADJoinedDeviceAccepted": false,
  },
  "b2bCollaborationOutbound": 
  {
    "usersAndGroups": 
    {
      "accessType": allowed,
      "targets": [
        {
          "target" : "AllGroups",
          "targetType: "group"
        },
        {
          "target" : "AllUsers",
          "targetType: "user"
        }
      ]
    },
    "applications": [
    {
      "accessType": allowed,
      "targets": [
        {
          "target" : "AllApplications",
          "targetType: "application"
        }
      ]
    ]
  },
  "b2bCollaborationInbound": 
  {
    "usersAndGroups": 
    {
      "accessType": allowed,
      "targets": [
        {
          "target" : "AllGroups",
          "targetType: "group"
        },
        {
          "target" : "AllUsers",
          "targetType: "user"
        }
      ]
    },
    "applications":
    {
      "accessType": allowed,
      "targets": [
        {
          "target" : "AllApplications",
          "targetType: "application"
        }
      ]
    }
  },
  "b2bDirectConnectOutbound": 
  {
    "usersAndGroups": 
    {
      "accessType": blocked,
      "targets": [
        {
          "target" : "AllGroups",
          "targetType: "group"
        },
        {
          "target" : "AllUsers",
          "targetType: "user"
        }
      ]
    },
    "applications":
    {
      "accessType": blocked,
      "targets": [
        {
          "target" : "AllApplications",
          "targetType: "application"
        }
      ]
    }
  },
  "b2bDirectConnectInbound": 
  {
    "usersAndGroups": 
    {
      "accessType": blocked,
      "targets": [
        {
          "target" : "AllGroups",
          "targetType: "group"
        },
        {
          "target" : "AllUsers",
          "targetType: "user"
        }
      ]
    },
    "applications":
    {
      "accessType": blocked,
      "targets": [
        {
          "target" : "AllApplications",
          "targetType: "application"
        }
      ]
    }
  }
}
```

