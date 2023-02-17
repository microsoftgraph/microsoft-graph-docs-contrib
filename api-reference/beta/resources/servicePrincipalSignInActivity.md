---
title: "servicePrincipalSignInActivity resource type"
description: "Represents the service principal signIn activity usage in a given tenant."
localization_priority: Normal
author: "madansr7"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# userCredentialUsageDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The sign-in activities for a servicePrincipal. Contains information about last usage time of the service principal.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List servicePrincipalSignInActivity](../api/serviceprincipal-lastusedate-list.md) | servicePrincipalSignInActivity | Retrieve a list of servicePrincipalSignInActivity objects. |
| [Get servicePrincipalSignInActivity](../api/serviceprincipal-lastusedate-get.md) | servicePrincipalSignInActivity| Read properties and relationships of a servicePrincipalSignInActivity object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| id                                              | string                         | The unique id for each service principal sign-in event.                                                                              | 
| appId                                           | string                         | The application id of the resource.                                                                                                  | 
| delegatedClientSignInActivity                   | microsoft.graph.signInActivity | The sign-in activity of the application in a delegated flow (user sign in) where the application is acting like a client.            | 
| delegatedResourceSignInActivity                 | microsoft.graph.signInActivity | The sign-in activity of the application in a delegated flow (user sign in) where the application is acting like a resource.          | 
| applicationAuthenticationClientSignInActivity   | microsoft.graph.signInActivity | The sign-in activity of the application in a app-only auth flow (app to app tokens) where the application is acting like a client.   | 
| applicationAuthenticationResourceSignInActivity | microsoft.graph.signInActivity | The sign-in activity of the application in a app-only auth flow (app to app tokens) where the application is acting like a resource. | 
| lastSignInActivity | microsoft.graph.signInActivity | The most recent sign-in activity of the application across delegated or app only flows where the application is used like a client or resource. | 


## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

```json
{
"id"                                              : "string",
"appId"                                           : "string",
"delegatedClientSignInActivity"                   : "microsoft.graph.signInActivity",
"delegatedResourceSignInActivity"                 : "microsoft.graph.signInActivity",
"applicationAuthenticationClientSignInActivity"   : "microsoft.graph.signInActivity",
"applicationAuthenticationResourceSignInActivity" : "microsoft.graph.signInActivity",
"lastSignInActivity" : "microsoft.graph.signInActivity" 
}
```



