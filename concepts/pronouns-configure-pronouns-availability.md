---
title: "Customize pronouns availability (preview) (preview)"
description: "Configure the availability of pronouns by using the REST API pronounsSettings resource."
author: "aymen-ms"
ms.localizationpriority: high
ms.prod: "people"
ms.custom: scenarios:getting-started
---

# Manage access to pronouns using APIs in Microsoft Graph (preview)

If you are a global administrator, you can turn on or off the display of pronouns in your organization. By default, pronouns are **off**. If you turn pronouns on, users will be able to add and update pronouns in Microsoft 365.

> [!NOTE]
> APIs under the `/beta` version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

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
  "isEnabledInOrganization": false
}
```
 
## Scenarios

You can either make pronouns available or unavailable in your organization.

|Scenario | isEnabledInOrganization|
|:---|:---|
|Make pronouns unavailable to everyone in the organization (default) | False|
|Make pronouns available to everyone in the organization. | True|


## Enabling pronouns in your organization

Use the [patch](/graph/api/pronounssettings-update?view=graph-rest-beta&preserve-view=true) operation to enable showing pronouns in your organization.

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

Use the `patch` operation to make pronouns unavailable in your organization.

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

When you turn pronouns on or off, it can take up to six hours for users to see changes. For example, if you turn pronouns on, users won’t be able to see the option to add pronouns on their profile for up to six hours. If you turn pronouns off, any previously set pronouns might stay visible in Microsoft 365 (for example, on profile cards) for up to six hours. 

When you turn pronouns off, the pronouns data deletion process can take up to 30 days to complete. If you decide to turn pronouns back on within that period, any hidden pronouns that have not yet been deleted from Microsoft servers will be made visible in Microsoft 365 experiences, such as profile cards. 