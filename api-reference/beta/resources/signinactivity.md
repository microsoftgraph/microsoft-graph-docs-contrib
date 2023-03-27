---
title: "signInActivity resource type"
description: "Provides the last interactive or non-interactive sign-in time for a specific user."
ms.localizationpriority: medium
author: "besiler"
ms.prod: "identity-and-access-reports"
doc_type: "resourcePageType"
---

# signInActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the last interactive or non-interactive sign-in time for a specific [user](user.md). Since signInActivity describes a property of the user object, Azure AD stores signinactivity for your users for as long as the user object exists. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|lastSignInDateTime|DateTimeOffset|The last interactive sign-in date and time for a specific user. You can use this field to calculate the last time a user signed in to the directory with an interactive authentication method. This field can be used to build reports, such as inactive users. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is: `'2014-01-01T00:00:00Z'`. Azure AD maintains interactive sign-ins going back to April 2020. For more information about using the value of this property, see [Manage inactive user accounts in Azure AD](/azure/active-directory/reports-monitoring/howto-manage-inactive-user-accounts).|
|lastSignInRequestId|String|Request identifier of the last interactive sign-in performed by this user.|
|lastNonInteractiveSignInDateTime|DateTimeOffset|The last non-interactive sign-in date for a specific user. You can use this field to calculate the last time a client signed in to the directory on behalf of a user. Because some users may use clients to access tenant resources rather than signing into your tenant directly, you can use the non-interactive sign-in date to along with lastSignInDateTime to identify inactive users. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is: `'2014-01-01T00:00:00Z'`. Azure AD maintains non-interactive sign-ins going back to May 2020. For more information about using the value of this property, see [Manage inactive user accounts in Azure AD](/azure/active-directory/reports-monitoring/howto-manage-inactive-user-accounts).|
|lastNonInteractiveSignInRequestId|String|Request identifier of the last non-interactive sign-in performed by this user.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signInActivity",
  "baseType": null
}-->

```json
{
  "@odata.type": "#microsoft.graph.signInActivity",
  "lastSignInDateTime": "String (timestamp)",
  "lastSignInRequestId": "String",
  "lastNonInteractiveSignInDateTime": "String (timestamp)",
  "lastNonInteractiveSignInRequestId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "signInActivity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
