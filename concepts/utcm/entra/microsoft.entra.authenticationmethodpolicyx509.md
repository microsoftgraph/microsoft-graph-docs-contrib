---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Microsoft Entra Authentication Method Policy X509


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AuthenticationModeConfiguration | Write | MSFT_MicrosoftGraphx509CertificateAuthenticationModeConfiguration | Defines strong authentication configurations. This configuration includes the default authentication mode and the different rules for strong authentication bindings. | - |
| CertificateUserBindings | Write | MSFT_MicrosoftGraphx509CertificateUserBinding[] | Defines fields in the X.509 certificate that map to attributes of the Microsoft Entra user object in order to bind the certificate to the user. The priority of the object determines the order in which the binding is carried out. The first binding that matches will be used and the rest ignored. | - |
| ExcludeTargets | Write | AuthenticationMethodPolicyX509ExcludeTarget[] | Displayname of the groups of users that are excluded from a policy. | - |
| IncludeTargets | Write | AuthenticationMethodPolicyX509IncludeTarget[] | Displayname of the groups of users that are included from a policy. | - |
| State | Write | String | The state of the policy. Possible values are: enabled, disabled. | `enabled`, `disabled` |
| Id | Key | String | The unique identifier for an entity. Read-only. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |

### MSFT_MicrosoftGraphX509CertificateAuthenticationModeConfiguration

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Rules | Write | MSFT_MicrosoftGraphX509CertificateRule[] | Rules are configured in addition to the authentication mode to bind a specific x509CertificateRuleType to an x509CertificateAuthenticationMode. For example, bind the policyOID with identifier 1.32.132.343 to x509CertificateMultiFactor authentication mode. | - |
| X509CertificateAuthenticationDefaultMode | Write | String | The type of strong authentication mode. The possible values are: x509CertificateSingleFactor, x509CertificateMultiFactor, unknownFutureValue. | `x509CertificateSingleFactor`, `x509CertificateMultiFactor`, `unknownFutureValue` |

### MSFT_MicrosoftGraphX509CertificateRule

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identifier | Write | String | The identifier of the X.509 certificate. Required. | - |
| X509CertificateAuthenticationMode | Write | String | The type of strong authentication mode. The possible values are: x509CertificateSingleFactor, x509CertificateMultiFactor, unknownFutureValue. Required. | `x509CertificateSingleFactor`, `x509CertificateMultiFactor`, `unknownFutureValue` |
| X509CertificateRuleType | Write | String | The type of the X.509 certificate mode configuration rule. The possible values are: issuerSubject, policyOID, unknownFutureValue. Required. | `issuerSubject`, `policyOID`, `unknownFutureValue` |

### MSFT_MicrosoftGraphX509CertificateUserBinding

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Priority | Write | UInt32 | The priority of the binding. Microsoft Entra uses the binding with the highest priority. This value must be a non-negative integer and unique in the collection of objects in the certificateUserBindings property of an x509CertificateAuthenticationMethodConfiguration object. Required | - |
| UserProperty | Write | String | Defines the Microsoft Entra user property of the user object to use for the binding. The possible values are: userPrincipalName, onPremisesUserPrincipalName, email. Required. | - |
| X509CertificateField | Write | String | The field on the X.509 certificate to use for the binding. The possible values are: PrincipalName, RFC822Name. | - |

### AuthenticationMethodPolicyX509ExcludeTarget

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The object identifier of an Microsoft Entra group. | - |
| TargetType | Write | String | The type of the authentication method target. Possible values are: group and unknownFutureValue. | `group`, `unknownFutureValue` |

### AuthenticationMethodPolicyX509IncludeTarget

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The object identifier of an Microsoft Entra group. | - |
| isRegistrationRequired | Write | Boolean | Determines if the user is enforced to register the authentication method. | - |
| TargetType | Write | String | The type of the authentication method target. Possible values are: group and unknownFutureValue. | `group`, `unknownFutureValue` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Authentication Policy Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Policy.Read.AuthenticationMethod, Group.Read.All |
| Update    | Policy.ReadWrite.AuthenticationMethod, Group.Read.All |



