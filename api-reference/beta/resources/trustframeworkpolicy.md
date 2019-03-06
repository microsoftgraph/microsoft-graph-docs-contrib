# trustFrameworkPolicy resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Trust Framework Policy (also called custom policy) in Azure Active Directory B2C.  A Trust Framework Policy gives you full control over the identity workflow.  Creating one enables:

* Control of each step in the user journey through the identity stack.
* Federation to any SAML, Open ID Connect, or OAuth2 identity provider.
* Integration with other systems or user data stores by calling REST endpoints.
* Transformation of claims and customization of tokens issued to the relying party application.

For more information, visit [https://docs.microsoft.com/en-us/azure/active-directory-b2c/active-directory-b2c-overview-custom](https://docs.microsoft.com/en-us/azure/active-directory-b2c/active-directory-b2c-overview-custom).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create trustFrameworkPolicy](../api/trustframework-policies-create.md)|trustFramework Policy|Create a new trustFrameworkPolicy.|
|[Get trustFrameworkPolicy](../api/trustframework-policies-get.md) |trustFrameworkPolicy|Read properties of an existing trustFrameworkPolicy.|
|[List trustFrameworkPolicy](../api/trustframework-policies-list.md)|trustFrameworkPolicy collection|List all trustFrameworkPolicies configured in a tenant.|
|[Update trustFrameworkPolicy](../api/trustframework-policies-update.md)|None|Update an existing trustFrameworkPolicy.|
|[Delete trustFrameworkPolicy](../api/trustframework-policies-delete.md)|None|Delete an existing trustFrameworkPolicy.|

## Properties

|Property|Type|Required|Nullable|Description|
|:---------------|:--------|:--------|:--------|:----------|
|id|String|Yes|No|The id of the policy.|

## JSON representation

The following is a JSON representation of the resource.

```json
{
    "@odata.mediaReadLink": "trustFramework/policies/B2C_1A_Test/$value",
    "id": "B2C_1A_Test"
}
```

## XML representation

The following is an XML representation of the policy.  For the complete XML schema, refer to the TrustFrameworkPolicy xsd file here: [https://github.com/Azure-Samples/active-directory-b2c-custom-policy-starterpack](https://github.com/Azure-Samples/active-directory-b2c-custom-policy-starterpack).

```xml
<TrustFrameworkPolicy xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/online/cpim/schemas/2013/06" PolicySchemaVersion="0.3.0.0" TenantId="tenantName.onmicrosoft.com" PolicyId="B2C_1A_SocialAndLocalAccounts_Base">
    <!---PolicyContent-->
</TrustFrameworkPolicy>
```