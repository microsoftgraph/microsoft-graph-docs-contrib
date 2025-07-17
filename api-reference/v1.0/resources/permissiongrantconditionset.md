---
title: "permissionGrantConditionSet resource type"
description: "Specifies a matching rule with conditions under which an event is included or excluded from a permission grant policy."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "psignoret"
ms.date: 03/06/2024
---

# permissionGrantConditionSet resource type

Namespace: microsoft.graph

A permission grant condition set is used to specify a matching rule in a [permission grant policy](permissiongrantpolicy.md) to include or exclude a permission grant event.

A permission grant condition set contains several conditions. For an event to match a permission grant condition set, all conditions must be met.

## Properties

| Property     | Type |Description|
|:---------------|:--------|:----------|
| clientApplicationsFromVerifiedPublisherOnly | Boolean | Set to `true` to only match on client applications with a verified publisher. Set to `false` to match on any client app, even if it doesn't have a verified publisher. Default is `false`. |
| clientApplicationIds | String collection | A list of **appId** values for the client applications to match with, or a list with the single value `all` to match any client application. Default is the single value `all`. |
| clientApplicationPublisherIds | String collection | A list of Microsoft Partner Network (MPN) IDs for verified publishers of the client application, or a list with the single value `all` to match with client apps from any publisher. Default is the single value `all`. |
| clientApplicationTenantIds | String collection | A list of Microsoft Entra tenant IDs in which the client application is registered, or a list with the single value `all` to match with client apps registered in any tenant. Default is the single value `all`. |
| id | String | The unique identifier for the permission grant condition set. Key. Read-only. |
| permissionClassification | String | The [permission classification](delegatedpermissionclassification.md) for the permission being granted, or `all` to match with any permission classification (including permissions that aren't classified). Default is `all`. |
| permissions | String collection | The list of **id** values for the specific permissions to match with, or a list with the single value `all` to match with any permission. The **id** of delegated permissions can be found in the **oauth2PermissionScopes** property of the API's [**servicePrincipal**](serviceprincipal.md) object. The **id** of application permissions can be found in the **appRoles** property of the API's [**servicePrincipal**](serviceprincipal.md) object. The **id** of resource-specific application permissions can be found in the **resourceSpecificApplicationPermissions** property of the API's [**servicePrincipal**](serviceprincipal.md) object. Default is the single value `all`. |
| permissionType | permissionType | The permission type of the permission being granted. Possible values: `application` for application permissions (for example app roles), or `delegated` for delegated permissions. The value `delegatedUserConsentable` indicates delegated permissions that haven't been configured by the API publisher to require admin consent—this value may be used in built-in permission grant policies, but can't be used in custom permission grant policies. Required. |
| resourceApplication | String | The **appId** of the resource application (for example the API) for which a permission is being granted, or `any` to match with any resource application or API. Default is `any`. |

## JSON representation

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionGrantConditionSet"
}-->

```json
{
    "id": "string (identifier)",
    "permissionClassification": "string",
    "permissionType": "string",
    "resourceApplication": "string",
    "permissions": [ "string" ],
    "clientApplicationIds": [ "string" ],
    "clientApplicationTenantIds": [ "string" ],
    "clientApplicationPublisherIds": [ "string" ],
    "clientApplicationsFromVerifiedPublisherOnly": false
}
```
