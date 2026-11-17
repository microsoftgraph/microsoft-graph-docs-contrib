---
title: "Supported resources for remediation and applyOnce (preview)"
description: "Learn about resource support and authorization requirements for Tenant Configuration Management drift remediation and applyOnce monitors."
author: "Anusree-stack"
ms.date: 11/14/2026
ms.localizationpriority: medium
doc_type: conceptual
ms.subservice: "tenant-configuration-management"
---

# Supported resources for remediation and applyOnce (preview)

Tenant Configuration Management (TCM) drift remediation and `applyOnce` monitors change workload configuration on behalf of the signed-in administrator. These capabilities are available in preview through Microsoft Graph beta. TCM is available only in the global service, not in national clouds.

<!--
Sources: Resource validation workbook, six Entra Yes observations reviewed November 4, 2026; author confirmation on November 4, 2026, for 20 Copilot resources, three Agent resources, and four Exchange resources, including their least-privileged roles. The author confirmed microsoft.agent.useraccess and excluded microsoft.copilot.copilotpinchatsettings. Append resources only after confirmation. The author requested Global Administrator only for externalidentitypolicy until a lower-privileged role is confirmed. The Entra observations don't establish least-privilege minima or prove that both remediation and applyOnce were independently tested.
November 12, 2026: Added conditionalaccesspolicy, crosstenantaccesspolicyconfigurationdefault, authenticationmethodpolicyemail, namedlocationpolicy, and malwarefilterpolicy based on Yes observations and comments in the engineering workbook and Done entries in the readiness tracker. For conditionalaccesspolicy, authenticationmethodpolicyemail, and namedlocationpolicy, only Global Administrator was tested end to end in SDF; other listed roles are based on Graph documentation and the TCM authorization map. Preserve the filter-role and email-target restrictions. These sources don't establish worldwide deployment for every addition.
November 13, 2026: Added authenticationmethodpolicysms, authenticationmethodpolicyvoice, crosstenantaccesspolicyconfigurationpartner, organizationconfig, and safeattachmentpolicy based on Yes observations and comments in the engineering workbook. Partner-policy lookups conditionally require User.Read.All, Group.Read.All, or Application.Read.All; only Global Administrator was tested end to end for that resource. Exchange user roles follow the resource-specific engineering comments.
November 14, 2026: Added authenticationmethodpolicyfido2 and safelinkspolicy based on Yes observations in the engineering workbook and Done entries in the readiness tracker. FIDO2 has a worldwide rollout ETA of November 16; publishing remains gated on deployment confirmation.
November 14, 2026: Added authenticationmethodpolicyx509, hostedcontentfilterpolicy, and remotedomain based on updated Yes observations in the engineering workbook. For X509, only Global Administrator was tested end to end in SDF, with remediation verified through Graph; Group.Read.All supports baseline group lookups. Added antiphishpolicy with the author's approval using the workbook comment's Exchange Administrator role correction; its observation remains No, not Yes.
-->

## Resource support

The following resources are currently supported in the preview.

Grant the delegated workload permissions to the TCM service principal. Assign the listed administrative role to the signed-in user, not to the service principal.

### Microsoft Copilot resources

The delegated permission in this table belongs to Microsoft Graph.

[!INCLUDE [copilot-policy-restriction](includes/utcm/copilot-policy-restriction.md)]

|Resource|Delegated permission on the TCM service principal|Least-privileged signed-in user role|
|:---|:---|:---|
|[microsoft.copilot.allowconnectedofficeexperiences](utcm-copilot-resources.md#allowconnectedofficeexperiences-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.allowfeedback](utcm-copilot-resources.md#allowfeedback-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.allowfileupload](utcm-copilot-resources.md#allowfileupload-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.allowinadmincenters](utcm-copilot-resources.md#allowinadmincenters-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.allowlogsinfeedback](utcm-copilot-resources.md#allowlogsinfeedback-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.allowofficeexperiencesanalyzingcontent](utcm-copilot-resources.md#allowofficeexperiencesanalyzingcontent-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.allowoptionalconnectedexperiences](utcm-copilot-resources.md#allowoptionalconnectedexperiences-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.allowwebsearch](utcm-copilot-resources.md#allowwebsearch-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.blockaccesstocamerasharing](utcm-copilot-resources.md#blockaccesstocamerasharing-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.blockaccesstoopenfiles](utcm-copilot-resources.md#blockaccesstoopenfiles-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.blockaccesstoscreensharing](utcm-copilot-resources.md#blockaccesstoscreensharing-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.copilotchatpinning](utcm-copilot-resources.md#copilotchatpinning-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.copilotchatsidepane](utcm-copilot-resources.md#copilotchatsidepane-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.copilotpagesnotebooks](utcm-copilot-resources.md#copilotpagesnotebooks-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.frontier](utcm-copilot-resources.md#frontier-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.harmfulcontentprotections](utcm-copilot-resources.md#harmfulcontentprotections-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.imagegeneration](utcm-copilot-resources.md#imagegeneration-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.multipleaccountaccess](utcm-copilot-resources.md#multipleaccountaccess-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.powerpointdesigner](utcm-copilot-resources.md#powerpointdesigner-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.copilot.videogeneration](utcm-copilot-resources.md#videogeneration-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|

The `microsoft.copilot.videogeneration` setting is deprecated and no longer applies. See its [resource description](utcm-copilot-resources.md#videogeneration-resource-type).

### Microsoft Agent resources

The delegated permission in this table belongs to Microsoft Graph.

|Resource|Delegated permission on the TCM service principal|Least-privileged signed-in user role|
|:---|:---|:---|
|[microsoft.agent.allowedagenttypes](utcm-agent-resources.md#allowedagenttypes-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.agent.sharing](utcm-agent-resources.md#sharing-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|
|[microsoft.agent.useraccess](utcm-agent-resources.md#useraccess-resource-type)|`CopilotPolicySettings.ReadWrite`|AI Administrator|

### Microsoft Exchange resources

The delegated permission in this table belongs to Exchange Online, not Microsoft Graph. `Exchange.Manage` doesn't replace the `Exchange.ManageAsApp` application permission used for monitoring and snapshots.

|Resource|Delegated permission on the TCM service principal|Signed-in user's role|
|:---|:---|:---|
|[microsoft.exchange.accepteddomain](utcm-exchange-resources.md#accepteddomain-resource-type)|`Exchange.Manage`|Exchange Administrator|
|[microsoft.exchange.antiphishpolicy](utcm-exchange-resources.md#antiphishpolicy-resource-type)|`Exchange.Manage`|Exchange Administrator OR Security Administrator OR Global Administrator|
|[microsoft.exchange.casmailboxplan](utcm-exchange-resources.md#casmailboxplan-resource-type)|`Exchange.Manage`|Exchange Administrator|
|[microsoft.exchange.hostedcontentfilterpolicy](utcm-exchange-resources.md#hostedcontentfilterpolicy-resource-type)|`Exchange.Manage`|Security Administrator OR Exchange Administrator|
|[microsoft.exchange.mailboxplan](utcm-exchange-resources.md#mailboxplan-resource-type)|`Exchange.Manage`|Exchange Administrator|
|[microsoft.exchange.malwarefilterpolicy](utcm-exchange-resources.md#malwarefilterpolicy-resource-type)|`Exchange.Manage`|Security Administrator OR Exchange Administrator OR Global Administrator|
|[microsoft.exchange.organizationconfig](utcm-exchange-resources.md#organizationconfig-resource-type)|`Exchange.Manage`|Exchange Administrator|
|[microsoft.exchange.owamailboxpolicy](utcm-exchange-resources.md#owamailboxpolicy-resource-type)|`Exchange.Manage`|Exchange Administrator|
|[microsoft.exchange.remotedomain](utcm-exchange-resources.md#remotedomain-resource-type)|`Exchange.Manage`|Exchange Administrator|
|[microsoft.exchange.safeattachmentpolicy](utcm-exchange-resources.md#safeattachmentpolicy-resource-type)|`Exchange.Manage`|Exchange Administrator OR Security Administrator|
|[microsoft.exchange.safelinkspolicy](utcm-exchange-resources.md#safelinkspolicy-resource-type)|`Exchange.Manage`|Security Administrator OR Global Administrator|

`OR` indicates alternative roles, not cumulative requirements. For `antiphishpolicy`, `hostedcontentfilterpolicy`, `malwarefilterpolicy`, `safeattachmentpolicy`, and `safelinkspolicy`, the listed alternatives aren't confirmed least-privilege minima.

### Microsoft Entra resources

The delegated permissions in this table belong to Microsoft Graph.

|Resource|Delegated permission on the TCM service principal|Signed-in user's role|
|:---|:---|:---|
|[microsoft.entra.authenticationmethodpolicy](utcm-entra-resources.md#authenticationmethodpolicy-resource-type)|`Policy.ReadWrite.AuthenticationMethod`|Authentication Policy Administrator OR Global Administrator|
|[microsoft.entra.authenticationmethodpolicyemail](utcm-entra-resources.md#authenticationmethodpolicyemail-resource-type)|`Policy.ReadWrite.AuthenticationMethod`, `Group.Read.All`|Authentication Policy Administrator OR Global Administrator|
|[microsoft.entra.authenticationmethodpolicyfido2](utcm-entra-resources.md#authenticationmethodpolicyfido2-resource-type)|`Policy.ReadWrite.AuthenticationMethod`, `Group.Read.All`|Authentication Policy Administrator OR Global Administrator|
|[microsoft.entra.authenticationmethodpolicysms](utcm-entra-resources.md#authenticationmethodpolicysms-resource-type)|`Policy.ReadWrite.AuthenticationMethod`, `Group.Read.All`|Authentication Policy Administrator OR Global Administrator|
|[microsoft.entra.authenticationmethodpolicyvoice](utcm-entra-resources.md#authenticationmethodpolicyvoice-resource-type)|`Policy.ReadWrite.AuthenticationMethod`, `Group.Read.All`|Authentication Policy Administrator OR Global Administrator|
|[microsoft.entra.authenticationmethodpolicyx509](utcm-entra-resources.md#authenticationmethodpolicyx509-resource-type)|`Policy.ReadWrite.AuthenticationMethod`, `Group.Read.All`|Authentication Policy Administrator OR Global Administrator|
|[microsoft.entra.authorizationpolicy](utcm-entra-resources.md#authorizationpolicy-resource-type)|`Policy.ReadWrite.Authorization`|Privileged Role Administrator OR Global Administrator|
|[microsoft.entra.conditionalaccesspolicy](utcm-entra-resources.md#conditionalaccesspolicy-resource-type)|`Policy.Read.All`, `Policy.ReadWrite.ConditionalAccess`, `Agreement.Read.All`, `Application.Read.All`, `Group.Read.All`, `RoleManagement.Read.Directory`, `User.Read.All`, `CustomSecAttributeDefinition.Read.All`|Conditional Access Administrator OR Security Administrator OR Global Administrator|
|[microsoft.entra.crosstenantaccesspolicyconfigurationdefault](utcm-entra-resources.md#crosstenantaccesspolicyconfigurationdefault-resource-type)|`Policy.ReadWrite.CrossTenantAccess`, `User.Read.All`, `Group.Read.All`|Security Administrator OR Global Administrator|
|[microsoft.entra.crosstenantaccesspolicyconfigurationpartner](utcm-entra-resources.md#crosstenantaccesspolicyconfigurationpartner-resource-type)|`Policy.ReadWrite.CrossTenantAccess`; see [additional lookup permissions](#cross-tenant-access-partner-policy-lookup-permissions).|Security Administrator OR Global Administrator|
|[microsoft.entra.externalidentitypolicy](utcm-entra-resources.md#externalidentitypolicy-resource-type)|`Policy.ReadWrite.ExternalIdentities`|Global Administrator|
|[microsoft.entra.namedlocationpolicy](utcm-entra-resources.md#namedlocationpolicy-resource-type)|`Policy.Read.All`, `Policy.ReadWrite.ConditionalAccess`|Conditional Access Administrator OR Security Administrator OR Global Administrator|
|[microsoft.entra.roledefinition](utcm-entra-resources.md#roledefinition-resource-type)|`RoleManagement.ReadWrite.Directory`|Privileged Role Administrator OR Global Administrator|
|[microsoft.entra.securitydefaults](utcm-entra-resources.md#securitydefaults-resource-type)|`Policy.ReadWrite.SecurityDefaults`|Security Administrator OR Global Administrator|
|[microsoft.entra.tenantdetails](utcm-entra-resources.md#tenantdetails-resource-type)|`Organization.ReadWrite.All`|Billing Administrator OR Global Administrator|

`OR` indicates alternative roles, not cumulative requirements. The listed roles are current setup guidance, not confirmed least-privilege minima. Global Administrator is listed alone for `externalidentitypolicy` while a lower-privileged role is being validated. For `tenantdetails`, role requirements depend on the organization properties being changed; don't generalize this role mapping to unrelated properties.

For `conditionalaccesspolicy`, `authenticationmethodpolicyemail`, `authenticationmethodpolicyx509`, `namedlocationpolicy`, and `crosstenantaccesspolicyconfigurationpartner`, end-to-end validation used Global Administrator. The other listed roles are based on Microsoft Graph documentation and the TCM authorization map and haven't been validated end to end.

For `authenticationmethodpolicyx509`, `Group.Read.All` supports lookup of groups referenced in the baseline.

#### Conditional Access policy restrictions

If a `conditionalaccesspolicy` baseline uses application or service principal filters, the signed-in user also needs the Attribute Definition Reader role. This requirement applies even when the user is a Global Administrator; that role doesn't grant Attribute Definition Reader permissions by default.

#### Cross-tenant access partner policy lookup permissions

For `crosstenantaccesspolicyconfigurationpartner`, grant the following additional delegated permissions to the TCM service principal when the baseline requires the corresponding lookups:

|Baseline lookup|Additional delegated permission|
|:---|:---|
|Application|`Application.Read.All`|
|Group|`Group.Read.All`|
|User|`User.Read.All`|

#### Email authentication method policy restrictions

For `authenticationmethodpolicyemail`, only groups and `all_users` are supported as targets. Individual user targets aren't supported.

### Other resources

Support for monitoring and snapshots doesn't imply support for remediation or `applyOnce`. The existing monitoring and snapshot resource documentation remains available:

- [Microsoft Entra resources](utcm-entra-resources.md)
- [Exchange resources](utcm-exchange-resources.md)
- [Intune resources](utcm-intune-resources.md)
- [Security and Compliance resources](utcm-securityandcompliance-resources.md)
- [Teams resources](utcm-teams-resources.md)

The linked resource schemas describe monitoring and snapshots. Their application-permission guidance doesn't replace the delegated permissions and user roles in the preceding tables.

## Authorization requirements

For each confirmed target resource, the TCM service principal needs delegated workload permissions, including the permissions to read the resource's current state. The signed-in user must have the workload administrative role required to manage that resource.

These requirements are separate from the calling app's `ConfigurationMonitoring.ReadWrite.All` delegated permission. See [Set up permissions for remediation and applyOnce (preview)](utcm-authentication-setup.md#set-up-permissions-for-remediation-and-applyonce-preview) for the three-principal model and tenant-wide delegated-grant setup.
