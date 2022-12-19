---
title: "Enabling or disabling pronouns in Microsoft 365 (preview)"
description: "Configure availability of pronouns by using REST API pronounsSettings resource."
author: "aymen-ms"
ms.localizationpriority: high
ms.prod: "people"
ms.custom: scenarios:getting-started
---

# Enabling or disabling pronouns settings in Microsoft 365 (preview)

> [!NOTE]
> APIs under the `/beta` version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

If you are a global administrator, you can enable and disable showing pronouns in your organization. Pronouns are **off** by default. When pronouns are enabled, users can add, update, and delete pronouns in Microsoft apps and services.

Pronouns settings are exposed through the *pronouns* property in *organizationSettings*.

## Confirm your current settings

Use the [get](/graph/api/pronounssettings-get?view=graph-rest-beta&preserve-view=true) operation to return the current configuration of pronouns in your organization.

In this example, pronouns are disabled: 

``` http
GET https://graph.microsoft.com/beta/organization/{organizationId}/settings/pronouns
```

If successful, the response returns a `200 OK` response code and a [**pronounsSettings**](/graph/resources/pronounssettings?view=graph-rest-beta&preserve-view=true) object in the response body.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "isEnabledInOrganization": false
  }
}
```
 
## Scenarios

You can either make pronouns available or unavailable in Microsoft apps and services in your organization.

|Scenario | isEnabledInOrganization|
|:---|:---|
|Make pronouns unavailable to everyone in the organization (default) | False|
|Make pronouns available to everyone in the organization. | True|


## Enabling pronouns in your organization

Use the [patch](/graph/api/pronounssettings-update?view=graph-rest-beta&preserve-view=true) operation to allow showing pronouns in Microsoft apps and services in your organization.

``` http
PATCH https://graph.microsoft.com/beta/organization/{organizationId}/settings/pronouns
Content-Type: application/json

{
  "isEnabledInOrganization": true
}
```
If successful, the response returns a `200 OK` response code and a [**pronounsSettings**](/graph/resources/pronounssettings?view=graph-rest-beta&preserve-view=true) object in the response body.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": true
}
```

## Disabling pronouns in your organization

Use the `patch` operation to make pronouns unavailable in Microsoft apps and services in your organization.

``` http
PATCH https://graph.microsoft.com/beta/organization/{organizationId}/settings/pronouns
Content-Type: application/json

{
  "isEnabledInOrganization": false
}
```

If successful, the response returns a `200 OK` response code and a [**pronounsSettings**](/graph/resources/pronounssettings?view=graph-rest-beta&preserve-view=true) object in the response body.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": false
}
```

## Important

When you turn off pronouns in your organization, pronouns are immediately hidden in Microsoft apps, but the data can persist for up to 30 days on Microsoft servers. If you choose to enable pronouns back not yet deleted pronouns that were hidden will be visible again. 
