---
title: "compute user protection scopes"
description: "Compute the data protection policies and actions applicable to a specific user based on their context."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# compute user protection scopes

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Applications are required to adhere to Microsoft Purview policies established by Security/Compliance Administrators, which dictate how data and user activities should be managed. This is referred to as protection scopes, and applications should use the ProtectionScopes API to understand what has been defined in the context of user interactions. The application calls the ProtectionScopes API to get the protection scopes for the user.

The API enables applications to specify activity types and location types in the request, thereby limiting the response to only include relevant protection scopes. Applications are required to provide device metadata and application metadata to assist in determining the appropriate protection scopes. This information is essential for ascertaining policy decisions relevant to the application's context.

## Execution Mode Behavior

Below is the the expected behavior on different values for executionMode in the response of the protectionScopes/compute API.

- evaluateInline: Wait for /processContent API to produce results before making decision about handling user activity, e.g. Allow or Block. No action.
- evaluateOffline: Do not wait for /processContent API to return its verdict. Take action, if any with no wait for API response

|Execution Mode | Action | Description |
|:------------------|:-------|:------------|
|evaluateInline | None | Caller should invoke Process API and wait for results before letting user activity to proceed|
|evalateInline | RestrictAccess | Not expected. Future actions that do not interfere with user activities may be present, e.g. NotifyUser|
|evaluateOffline | RestrictAccess | Caller should restrict user activity, call Process API independently of taking the action|
|evaluateOffline | None | Caller should not restrict user activity, call Process API independently|

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "userdatasecurityandgovernance-post-protectionscopes-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/userdatasecurityandgovernance-post-protectionscopes-permissions.md)]

## HTTP request

```http
POST /users/me/dataSecurityAndGovernance/protectionScopes/compute
POST /users/{usersId}/dataSecurityAndGovernance/protectionScopes/compute
```

## Request headers

| Name          | Description   |
| :------------ | :------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter             | Type                                                                                                                 | Description                                                                                                                                                         |
| :-------------------- | :------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| activities            | [userActivityTypes](../resources/useractivitytypes.md)                              | Required. Flags specifying the user activities the calling application supports or is interested in (e.g., `uploadText`, `downloadFile`).                            |
| locations             | [policyLocation](../resources/policylocation.md) collection                         | Optional. List of specific locations (domains or URLs) the application is interested in. If provided, results are trimmed to policies covering these locations.     |
| pivotOn               | [policyPivotProperty](../resources/policypivotproperty.md)                          | Optional. Specifies how the results should be aggregated (`activity` or `location`). If omitted or `none`, results might be less aggregated.                   |
| deviceMetadata        | [deviceMetadata](../resources/devicemetadata.md)                                  | Required. Information about the user's device (type, OS) used for contextual policy evaluation.                                                                    |
| integratedAppMetadata | [integratedApplicationMetadata](../resources/integratedapplicationmetadata.md)      | Required. Information about the calling application (name, version) integrating with Purview.                                                                    |

## Response

If successful, this action returns a `200 OK` response code and a collection of [policyUserScope](../resources/policyuserscope.md) objects in the response body. Each object represents a set of locations and activities governed by a common set of policy actions and execution mode for the specified user.

## Example

### Request

The following example computes the protection scope for a user performing text uploads, interested in a specific domain, pivoting the results by activity.

```http
POST https://graph.microsoft.com/beta/users/adele.vance@contoso.com/dataSecurityAndGovernance/protectionScopes/compute
Content-type: application/json

{
  "activities": "uploadText",
  "locations": [
    {
      "@odata.type": "#microsoft.graph.policyLocationDomain",
      "value": "public.contoso.com"
    }
  ],
  "pivotOn": "activity",
  "deviceMetadata": {
    "deviceType": "Desktop",
    "operatingSystemSpecifications": {
       "operatingSystemPlatform": "Windows",
       "operatingSystemVersion": "10.0.19045"
    }
  },
  "integratedAppMetadata": {
      "name": "Contoso Browser Helper",
      "version": "1.2.3"
  }
}
```

### Response

The following example shows the response. It indicates that for the `uploadText` activity to `public.contoso.com`, policies require inline evaluation and trigger a `browserRestriction` action (likely blocking uploads based on sensitive content).

> **Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.policyUserScope)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.policyUserScope",
      "locations": [
        {
          "@odata.type": "#microsoft.graph.policyLocationDomain",
          "value": "public.contoso.com"
        }
      ],
      "activities": "uploadText",
      "executionMode": "evaluateInline",
      "policyActions": [
         {
            "@odata.type": "#microsoft.graph.browserRestrictionAction",
             "action": "browserRestriction",
             "restrictionAction": "block",
             "message": "Uploading sensitive content to this site is blocked by policy.",
             "triggers": ["upload"], // Conceptual trigger, actual values TBD
             "webSiteGroupId": "website-group-guid"
         }
      ]
    }
    // Potentially other scopes for different activities/locations if requested/applicable
  ]
}
```
