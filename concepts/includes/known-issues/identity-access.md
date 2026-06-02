---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### Use of specific query parameters on /subscribedSkus and /domains doesn't return the expected results

<!-- {
  "ms.author": "tazkiaafra",
  "ms.reviewer": ""
} -->

The following usage of query parameters that target **subscribedSkus** and **domain** entities might not return the expected results:

- Use of `$search` on both **subscribedSkus** or **domain** entities
- Use of `$top` and `$filter` on the **domain** entity

Currently, these parameters are effectively ignored, and the queries don't return the expected results.

#### Workaround

To prevent any disruption to your business processes, we recommend that you modify your application code to remove usage of these query parameters from queries that target the **subscribedSkus** or **domain** entities and run the search, top, and filter on the client side.

### Configuring federated domains in delegated scenarios requires Directory.AccessAsUser.All permission

<!-- {
  "ms.author": "rahulnagraj",
  "ms.reviewer": ""
} -->

The [Create internalDomainFederation](/graph/api/domain-post-federationconfiguration), [Update internalDomainFederation](/graph/api/internaldomainfederation-update), and [Delete internalDomainFederation](/graph/api/internaldomainfederation-delete) might require you to grant consent to the *Directory.AccessAsUser.All* permission. This requirement is a temporary workaround till we provide a more granular delegated permission for managing federated domains.

### Claims mapping policy might require consent to additional permissions

<!-- {
  "ms.author": "paulgarn",
  "ms.reviewer": ""
} -->

The [claimsMappingPolicy](/graph/api/resources/claimsmappingpolicy) API might require consent to both the *Policy.Read.All* and *Policy.ReadWrite.ConditionalAccess* permissions for the `LIST /policies/claimsMappingPolicies` and `GET /policies/claimsMappingPolicies/{id}` methods, as follows:

- If no **claimsMappingPolicy** objects are available to retrieve in a LIST operation, either permission is sufficient to call this method.
- If there are **claimsMappingPolicy** objects to retrieve, your app must consent to both permissions. If not, a `403 Forbidden` error is returned.

In the future, either permission will be sufficient to call both methods.

### Conditional access policy requires consent to additional permission

<!-- {
  "ms.author": "davidspo",
  "ms.reviewer": ""
} -->

The [conditionalAccessPolicy](/graph/api/resources/conditionalaccesspolicy) API currently requires consent to the *Policy.Read.All* permission to call the POST and PATCH methods. In the future, the *Policy.ReadWrite.ConditionalAccess* permission will enable you to read policies from the directory.

### Provisioning of pre-registred passkeys not supported

<!-- {
  "ms.author": "samudapuram",
  "ms.reviewer": "intelligentaccesspm"
} -->

The FIDO2 provisioning API supports adding passkeys that are active upon creation. Provisioning, where passkeys are pre-registered with Microsoft Entra ID during device manufacturing or distribution and kept disabled until an administrator enables them, aren't supported in the current v1.0 release.

### FIDO2 provisioning API requires self-service setup to be enabled

<!-- {
  "ms.author": "samudapuram",
  "ms.reviewer": "intelligentaccesspm"
} -->

To use the FIDO2 provisioning API ([Create fido2AuthenticationMethod](/graph/api/authentication-post-fido2methods)), administrators must enable **Allow self-service setup** in the FIDO2 authentication method policy. In v1.0, this setting also enables end-user FIDO2 registration through My sign-ins. Enabling API-based provisioning independently of self-service registration is currently not supported.

**Microsoft Entra External ID:** External users don't have access to My sign-ins, so enabling this setting doesn't affect self-service registration for external users. Administrators must still enable the setting to use the provisioning API.
