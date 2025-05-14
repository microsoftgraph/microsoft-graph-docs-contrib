---
title: Customize Claims with Claims Mapping Policy in Microsoft Graph
description: "[Article description]."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: rahulnagraj, odaishalabi
ms.subservice: entra-applications
ms.topic: how-to
ms.date: 05/14/2025

#customer intent: As a <role>, I want <what> so that <why>.

---

# Customize claims with Claims Mapping Policy in Microsoft Graph


[Introduce and explain the purpose of the article.]

<!-- Required: Introductory paragraphs (no heading)

Write a brief introduction that can help the user
determine whether the article is relevant for them
and to describe the task the article covers.

-->

> [!IMPORTANT]
> Some API operations in this tutorial use the `beta` endpoint.

## Prerequisites

To follow this tutorial:

- Sign in to an API client like [Graph Explorer](https://aka.ms/ge) with a Microsoft Entra account that has the Application Administrator Microsoft Entra role.
- Grant the following delegated permissions: *Policy.Read.All*, *Policy.ReadWrite.ApplicationConfiguration*, and *Application.ReadWrite.All*.
- Have a service principal to assign the claims mapping policy to.

## Create a claims mapping policy

This policy adds the `department` claim from the user object into the token.

### Request

<!-- {
  "blockType": "request",
  "name": "how_to_claims_customization_create_claims_mapping_policy"
}-->
```http
POST https://graph.microsoft.com/beta/policies/claimsMappingPolicies
Content-type: application/json

{
 "definition": [
   "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\",\"ClaimsSchema\":[{\"Source\":\"user\",\"ID\":\"department\",\"JwtClaimType\":\"department\"}]}}"
 ],
 "displayName": "ExtraClaimsTest"
}
```

### Response

Record the ID from the response for use later in this article.
```http
HTTP/1.1 201 Created
Content-type: application/json


```

## Assign the policy to a service principal

The request returns a `204 No Content` response.

<!-- {
  "blockType": "request",
  "name": "how_to_claims_customization_assign_claims_mapping_policy"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/{servicePrincipalId}/claimsMappingPolicies/$ref
Content-type: application/json

{
 "@odata.id": "https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/{policyId}"
}
```


## Enable mapped claims in the application object

The request returns a `204 No Content` response.

<!-- {
  "blockType": "request",
  "name": "how_to_claims_customization_update_application"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/{ID}
Content-type: application/json


```

## Test the ID token

Sign in to Graph Explorer as a test user. In Graph Explorer, select the Get token details option to decode the token and inspect its details. The `department` claim should be present in the token.

## Clean up resources

<!-- Optional: Steps to clean up resources - H2

Provide steps the user can take to clean up resources that
they might no longer need.

-->

## Next step -or- Related content

> [!div class="nextstepaction"]
> [Next sequential article title](link.md)

-or-

* [Related article title](link.md)
* [Related article title](link.md)
* [Related article title](link.md)

<!-- Optional: Next step or Related content - H2

Consider adding one of these H2 sections (not both):

A "Next step" section that uses 1 link in a blue box 
to point to a next, consecutive article in a sequence.

-or- 

A "Related content" section that lists links to 
1 to 3 articles the user might find helpful.

-->

<!--

Remove all comments except the customer intent
before you sign off or merge to the main branch.

-->