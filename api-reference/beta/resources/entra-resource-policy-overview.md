---
title: "Microsoft Entra resource policy overview (preview)"
description: "Use Microsoft Entra resource policy to apply policy-as-code guardrails to supported Microsoft Graph resource changes, test policies, and control enforcement."
author: "dkershaw10"
ms.date: 10/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: conceptualPageType
ms.topic: overview
ai-usage: ai-assisted
---

# Microsoft Entra resource policy overview (preview)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[Microsoft Entra resource policy](/entra/id-governance/tenant-governance/resource-policy-overview) (ERP) helps organizations keep their Microsoft Entra resource configurations aligned with organizational standards. It evaluates incoming Microsoft Graph requests for supported resource types and operations and can block changes that violate an assigned policy before those changes are applied.

Microsoft Entra permissions and roles determine who can perform an operation. Resource policies complement those controls by defining conditions that a permitted operation must satisfy. For example, an administrator might be authorized to update an application, while a resource policy requires the application's configuration to follow your organization's standards.

## Benefits

Use resource policies to:

- **Prevent noncompliant changes.** Check proposed changes during request processing, reducing reliance on detecting and correcting configuration drift after a change.
- **Apply consistent guardrails.** Evaluate supported Microsoft Graph operations against shared rules, rather than relying only on validation in individual scripts or applications.
- **Manage policy as code.** Write declarative rules in Rego, keep their source in version control, and review and test changes before rollout.
- **Control rollout.** Evaluate policy impact before enforcement and move assignments to new definition versions explicitly.

Example policy scenarios include requiring approved application identifier URI patterns, controlling group ownership, and protecting emergency access exclusions when Conditional Access policies change.

## How resource policies work

Resource policies separate the rules that describe compliance from the assignments that activate those rules.

1. **Define a policy.** A [policy definition](../resources/resourcepolicydefinition.md) contains Rego rules, descriptive metadata, parameters, and applicability information that identifies the supported resource types and operations to evaluate. You can author your own definitions or use available Microsoft-authored built-in definitions.
2. **Assign a definition version.** A [policy assignment](../resources/resourcepolicyassignment.md) references a specific definition version and supplies parameter values, enabled status, and enforcement mode. Assignments use tenant-wide scope. Policy logic can further refine applicability based on the request context.
3. **Evaluate an incoming request.** For a supported operation, Microsoft Graph identifies matching enabled assignments and evaluates their policies. Policy input includes the request's target, payload, and caller context. When needed, policy logic can read additional Microsoft Graph data, such as the target resource's current configuration.
4. **Apply the enforcement decision.** Policies report compliance through the Rego `deny` rule. If an applicable policy reports noncompliance and its assignment uses `enforce`, Microsoft Graph blocks the request and returns the policy's failure reasons. Otherwise, request processing continues.

## Evaluate before enforcing

Use [evaluatePolicy](../api/resourcepolicyroot-evaluatepolicy.md) to test an inline Rego policy or [evaluateAssignedPolicies](../api/resourcepolicyroot-evaluateassignedpolicies.md) to test the applicable assignments for a supplied request. These actions evaluate the proposed request without performing the resource change and return policy results separately from the blocking decision.

For a staged rollout, enable an assignment with **enforcementMode** set to `doNotEnforce`. The policy is evaluated and its outcome is recorded, but that assignment doesn't block the request. Other enforced assignments can still block it. After reviewing the impact, set **enforcementMode** to `enforce` to block noncompliant requests.

Use the Microsoft Graph resource policy evaluation reporting APIs to understand policy impact across your tenant without setting up log collection. The reports summarize compliant and noncompliant requests, identify affected applications and policy assignments, and show compliance trends over time. They distinguish noncompliant requests from requests blocked by enforced policies, helping you assess policy impact in `doNotEnforce` mode before enabling enforcement.

Azure Monitor diagnostic settings remain an option for collecting policy evaluation logs. Send these logs to destinations such as Azure Log Analytics for detailed investigation and custom reporting.

## Manage policy changes

Definition versioning lets you evolve policy logic independently of active assignments. Updating a definition creates a new current version and retains the previous version in its history. Existing assignments remain pinned to their referenced version until you explicitly update them.

This separation supports controlled rollout and rollback: test a new version, update the assignments that should use it, and return an assignment to an available previous version when needed.

Use the Microsoft Graph resource policy APIs under `/admin/resourcePolicy` to manage definitions, assignments, version history, deleted items, and tenant-wide configuration.

## Related content

- [Policy definitions](../resources/resourcepolicydefinition.md)
- [Policy assignments](../resources/resourcepolicyassignment.md)
- [Overview of Tenant Governance APIs in Microsoft Graph](../resources/tenantgovernanceservices-tenantgovernance-overview.md)
