---
title: "authenticationMethodsRoot: usersRegisteredByFeature"
description: "Get the number of users capable of Multi-Factor Authentication, Self-Service Password Reset, and Passwordless authentication."
author: "danielwood95"
localization_priority: Normal
ms.prod: "reports"
doc_type: apiPageType
---

# authenticationMethodsRoot: usersRegisteredByFeature
Namespace: microsoft.graph

Get the number of users capable of Multi-Factor Authentication, Self-Service Password Reset, and Passwordless authentication.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Reports.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

In order to access the API, [one of the following roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles) is required:

* Reports reader
* Security reader
* Security admin
* Global reader
* Global admin

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/authenticationMethods/usersRegisteredByFeature
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|includedUserTypes|includedUserTypes|User type. Possible values are: `all`, `member`, `guest`.|
|includedUserRoles|includedUserRoles|User role type. Possible values are: `all`, `privilegedAdmin`, `admin`, `user`.|

The value `privilegedAdmin` consists of the following privileged admin roles:

* Global admin
* Security admin
* Conditional Access admin
* Exchange admin
* SharePoint admin
* Helpdesk admin
* Billing admin
* User admin
* Authentication admin

The value `admin` includes all Azure AD admin roles. 

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [userRegistrationFeatureSummary](../resources/userregistrationfeaturesummary.md) in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "authenticationmethodsroot_usersregisteredbyfeature"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/authenticationMethods/usersRegisteredByFeature(includedUserTypes='all',includedUserRoles='all')
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.Reporting.userRegistrationFeatureSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{​​
	"@odata.type": "#microsoft.graph.userRegistrationFeatureSummary",
	"totalUserCount" : 23123,
	"userTypes" : "all",
	"userRoles" : "all",
	"userRegistrationFeatureCounts" :
	[
		{​​ "feature":"ssprRegistered", "userCount": 23423 }​​,
		{​​ "feature":"ssprEnabled", "userCount": 4234 }​​,
		{​​ "feature":"ssprCapable", "userCount": 4234 }​​,
		{​​ "feature":"passwordlessRegistered", "userCount": 323 }​​,
		{​​ "feature":"mfaCapable", "userCount": 33 }​​,
	]
}​​
```
