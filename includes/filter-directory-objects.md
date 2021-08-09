| Application Property                          | eq                  | startsWith          | ge               | le               | null value          |
| --------------------------------------------- | ------------------- | ------------------- | ---------------- | ---------------- | ------------------- |
| appId                                         | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| applicationTemplateId                         | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| createdDateTime                               | ![Default][RDS]     |                     | ![Default][RDS]  | ![Default][RDS]  | ![Advanced][AQP]    |
| createdOnBehalfOf/deletedDateTime             | ![Default][RDS]     |                     | ![Default][RDS]  | ![Default][RDS]  | ![NotSupported][NS] |
| description                                   | ![Advanced][AQP]    | ![Advanced][AQP]    |                  |                  | ![NotSupported][NS] |
| disabledByMicrosoftStatus                     | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| displayName                                   | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| info/logoUrl                                  | ![NotSupported][NS] | ![NotSupported][NS] |                  |                  | ![Advanced][AQP]    |
| info/termsOfServiceUrl                        | ![Advanced][AQP]    | ![NotSupported][NS] |                  |                  | ![NotSupported][NS] |
| keyCredentials/any(k:k/endDateTime)           | ![Advanced][AQP]    |                     | ![Advanced][AQP] | ![Advanced][AQP] | ![NotSupported][NS] |
| publisherDomain                               | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![NotSupported][NS] |
| requiredResourceAccess/any(r:r/resourceAppId) | ![Advanced][AQP]    |                     |                  |                  | ![NotSupported][NS] |
| signInAudience                                | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |

| Contact Property                                           | eq               | startsWith       | ge              | le              | null value          |
| ---------------------------------------------------------- | ---------------- | ---------------- | --------------- | --------------- | ------------------- |
| companyName                                                | ![Advanced][AQP] | ![Advanced][AQP] |                 |                 | ![Advanced][AQP]    |
| department                                                 | ![Default][RDS]  | ![Default][RDS]  |                 |                 | ![Advanced][AQP]    |
| displayName                                                | ![Default][RDS]  | ![Default][RDS]  |                 |                 | ![Advanced][AQP]    |
| givenName                                                  | ![Default][RDS]  | ![Default][RDS]  |                 |                 | ![Advanced][AQP]    |
| jobTitle                                                   | ![Default][RDS]  | ![Default][RDS]  |                 |                 | ![Advanced][AQP]    |
| mail                                                       | ![Default][RDS]  | ![Default][RDS]  |                 |                 | ![Advanced][AQP]    |
| mailNickname                                               | ![Default][RDS]  | ![Default][RDS]  |                 |                 | ![Advanced][AQP]    |
| onPremisesLastSyncDateTime                                 | ![Default][RDS]  |                  | ![Default][RDS] | ![Default][RDS] | ![NotSupported][NS] |
| onPremisesProvisioningErrors/any(o:o/category)             | ![Default][RDS]  |                  |                 |                 | ![NotSupported][NS] |
| onPremisesProvisioningErrors/any(o:o/propertyCausingError) | ![Default][RDS]  |                  |                 |                 | ![NotSupported][NS] |
| onPremisesSyncEnabled                                      | ![Default][RDS]  |                  |                 |                 | ![Advanced][AQP]    |
| surname                                                    | ![Default][RDS]  | ![Default][RDS]  |                 |                 | ![Advanced][AQP]    |

| Device Property                                  | eq               | startsWith          | ge               | le               | null value          |
| ------------------------------------------------ | ---------------- | ------------------- | ---------------- | ---------------- | ------------------- |
| accountEnabled                                   | ![Default][RDS]  |                     |                  |                  | ![NotSupported][NS] |
| alternativeSecurityIds/any(a:a/identityProvider) | ![Advanced][AQP] | ![NotSupported][NS] |                  |                  | ![NotSupported][NS] |
| alternativeSecurityIds/any(a:a/type)             | ![Default][RDS]  |                     | ![Advanced][AQP] | ![Advanced][AQP] | ![NotSupported][NS] |
| approximateLastSignInDateTime                    | ![Default][RDS]  |                     | ![Default][RDS]  | ![Default][RDS]  | ![Advanced][AQP]    |
| deviceId                                         | ![Default][RDS]  |                     |                  |                  | ![NotSupported][NS] |
| displayName                                      | ![Default][RDS]  | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| isCompliant                                      | ![Default][RDS]  |                     |                  |                  | ![NotSupported][NS] |
| isManaged                                        | ![Default][RDS]  |                     |                  |                  | ![NotSupported][NS] |
| mdmAppId                                         | ![Default][RDS]  |                     |                  |                  | ![NotSupported][NS] |
| onPremisesLastSyncDateTime                       | ![Default][RDS]  |                     | ![Default][RDS]  | ![Default][RDS]  | ![NotSupported][NS] |
| onPremisesSyncEnabled                            | ![Default][RDS]  |                     |                  |                  | ![Advanced][AQP]    |
| operatingSystem                                  | ![Default][RDS]  | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| operatingSystemVersion                           | ![Default][RDS]  | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |

| Group Property                                             | eq                  | startsWith       | ge               | le               | null value          |
| ---------------------------------------------------------- | ------------------- | ---------------- | ---------------- | ---------------- | ------------------- |
| assignedLicenses/any(a:a/skuId)                            | ![Default][RDS]     |                  |                  |                  | ![NotSupported][NS] |
| classification                                             | ![Default][RDS]     | ![Default][RDS]  |                  |                  | ![NotSupported][NS] |
| createdOnBehalfOf/deletedDateTime                          | ![Default][RDS]     |                  | ![Default][RDS]  | ![Default][RDS]  | ![NotSupported][NS] |
| description                                                | ![Advanced][AQP]    | ![Advanced][AQP] |                  |                  | ![NotSupported][NS] |
| displayName                                                | ![Default][RDS]     | ![Default][RDS]  |                  |                  | ![Advanced][AQP]    |
| expirationDateTime                                         | ![Advanced][AQP]    |                  | ![Advanced][AQP] | ![Advanced][AQP] | ![NotSupported][NS] |
| hasMembersWithLicenseErrors                                | ![Default][RDS]     |                  |                  |                  | ![Default][RDS]     |
| mail                                                       | ![Default][RDS]     | ![Default][RDS]  |                  |                  | ![Advanced][AQP]    |
| mailEnabled                                                | ![Default][RDS]     |                  |                  |                  | ![NotSupported][NS] |
| mailNickname                                               | ![Default][RDS]     | ![Default][RDS]  |                  |                  | ![Advanced][AQP]    |
| membershipRule                                             | ![Default][RDS]     | ![Default][RDS]  |                  |                  | ![NotSupported][NS] |
| onPremisesLastSyncDateTime                                 | ![Default][RDS]     |                  | ![Default][RDS]  | ![Default][RDS]  | ![NotSupported][NS] |
| onPremisesProvisioningErrors/any(o:o/category)             | ![Default][RDS]     |                  |                  |                  | ![NotSupported][NS] |
| onPremisesProvisioningErrors/any(o:o/propertyCausingError) | ![Default][RDS]     |                  |                  |                  | ![NotSupported][NS] |
| onPremisesSamAccountName                                   | ![Advanced][AQP]    | ![Advanced][AQP] |                  |                  | ![NotSupported][NS] |
| onPremisesSecurityIdentifier                               | ![NotSupported][NS] |                  |                  |                  | ![Advanced][AQP]    |
| onPremisesSyncEnabled                                      | ![Default][RDS]     |                  |                  |                  | ![Advanced][AQP]    |
| preferredLanguage                                          | ![Advanced][AQP]    | ![Advanced][AQP] |                  |                  | ![Advanced][AQP]    |
| renewedDateTime                                            | ![Default][RDS]     |                  | ![Default][RDS]  | ![Default][RDS]  | ![NotSupported][NS] |
| securityEnabled                                            | ![Default][RDS]     |                  |                  |                  | ![NotSupported][NS] |

| oauth2PermissionGrants Property | eq               | startsWith | ge  | le  | null value          |
| ------------------------------- | ---------------- | ---------- | --- | --- | ------------------- |
| clientId                        | ![Advanced][AQP] |            |     |     | ![NotSupported][NS] |
| resourceId                      | ![Default][RDS]  |            |     |     | ![NotSupported][NS] |

| servicePrincipal Property           | eq                  | startsWith          | ge               | le               | null value          |
| ----------------------------------- | ------------------- | ------------------- | ---------------- | ---------------- | ------------------- |
| accountEnabled                      | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| appId                               | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| applicationTemplateId               | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| appOwnerOrganizationId              | ![Advanced][AQP]    |                     |                  |                  | ![NotSupported][NS] |
| appRoleAssignmentRequired           | ![Advanced][AQP]    |                     |                  |                  | ![NotSupported][NS] |
| createdObjects/any(c:c/id)          | ![Advanced][AQP]    |                     |                  |                  | ![NotSupported][NS] |
| description                         | ![Advanced][AQP]    | ![Advanced][AQP]    |                  |                  | ![NotSupported][NS] |
| displayName                         | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| info/logoUrl                        | ![NotSupported][NS] | ![NotSupported][NS] |                  |                  | ![Advanced][AQP]    |
| info/termsOfServiceUrl              | ![Advanced][AQP]    | ![NotSupported][NS] |                  |                  | ![NotSupported][NS] |
| keyCredentials/any(k:k/endDateTime) | ![Advanced][AQP]    |                     | ![Advanced][AQP] | ![Advanced][AQP] | ![NotSupported][NS] |

| User Property                                              | eq                  | startsWith          | ge               | le               | null value          |
| ---------------------------------------------------------- | ------------------- | ------------------- | ---------------- | ---------------- | ------------------- |
| accountEnabled                                             | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| ageGroup                                                   | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| assignedLicenses/any(a:a/skuId)                            | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| assignedPlans/any(a:a/capabilityStatus)                    | ![Advanced][AQP]    |                     |                  |                  | ![NotSupported][NS] |
| assignedPlans/any(a:a/service)                             | ![Advanced][AQP]    | ![NotSupported][NS] |                  |                  | ![NotSupported][NS] |
| assignedPlans/any(a:a/servicePlanId)                       | ![Advanced][AQP]    |                     |                  |                  | ![NotSupported][NS] |
| city                                                       | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| companyName                                                | ![Advanced][AQP]    | ![Advanced][AQP]    |                  |                  | ![Advanced][AQP]    |
| consentProvidedForMinor                                    | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| country                                                    | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| createdDateTime                                            | ![Advanced][AQP]    |                     | ![Advanced][AQP] | ![Advanced][AQP] | ![NotSupported][NS] |
| createdObjects/any(c:c/id)                                 | ![Advanced][AQP]    |                     |                  |                  | ![NotSupported][NS] |
| creationType                                               | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| department                                                 | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| displayName                                                | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| employeeHireDate                                           | ![Advanced][AQP]    |                     | ![Advanced][AQP] | ![Advanced][AQP] | ![NotSupported][NS] |
| employeeId                                                 | ![Default][RDS]     |                     |                  |                  | ![Advanced][AQP]    |
| employeeOrgData/costCenter                                 | ![Advanced][AQP]    | ![NotSupported][NS] |                  |                  | ![NotSupported][NS] |
| employeeOrgData/division                                   | ![Advanced][AQP]    | ![NotSupported][NS] |                  |                  | ![NotSupported][NS] |
| employeeType                                               | ![Advanced][AQP]    |                     |                  |                  | ![NotSupported][NS] |
| externalUserState                                          | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| externalUserStateChangeDateTime                            | ![Default][RDS]     |                     | ![Default][RDS]  | ![Default][RDS]  | ![NotSupported][NS] |
| faxNumber                                                  | ![Advanced][AQP]    | ![Advanced][AQP]    |                  |                  | ![Advanced][AQP]    |
| givenName                                                  | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| identities/any(i:i/issuer)                                 | ![Default][RDS]     | ![NotSupported][NS] |                  |                  | ![Default][RDS]     |
| isResourceAccount                                          | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| jobTitle                                                   | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| mail                                                       | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| mailNickname                                               | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| manager/deletedDateTime                                    | ![Default][RDS]     |                     | ![Default][RDS]  | ![Default][RDS]  | ![NotSupported][NS] |
| mobilePhone                                                | ![Advanced][AQP]    | ![Advanced][AQP]    |                  |                  | ![Advanced][AQP]    |
| officeLocation                                             | ![Advanced][AQP]    | ![Advanced][AQP]    |                  |                  | ![Advanced][AQP]    |
| onPremisesExtensionAttributes/extensionAttribute1-15       | ![Advanced][AQP]    | ![NotSupported][NS] |                  |                  | ![Advanced][AQP]    |
| onPremisesImmutableId                                      | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| onPremisesLastSyncDateTime                                 | ![Default][RDS]     |                     | ![Default][RDS]  | ![Default][RDS]  | ![NotSupported][NS] |
| onPremisesProvisioningErrors/any(o:o/category)             | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| onPremisesProvisioningErrors/any(o:o/propertyCausingError) | ![Default][RDS]     |                     |                  |                  | ![NotSupported][NS] |
| onPremisesSamAccountName                                   | ![Advanced][AQP]    | ![Advanced][AQP]    |                  |                  | ![NotSupported][NS] |
| onPremisesSecurityIdentifier                               | ![NotSupported][NS] |                     |                  |                  | ![Advanced][AQP]    |
| onPremisesSyncEnabled                                      | ![Default][RDS]     |                     |                  |                  | ![Advanced][AQP]    |
| passwordPolicies                                           | ![NotSupported][NS] | ![NotSupported][NS] |                  |                  | ![Advanced][AQP]    |
| passwordProfile/forceChangePasswordNextSignIn              | ![Advanced][AQP]    |                     |                  |                  | ![Advanced][AQP]    |
| passwordProfile/forceChangePasswordNextSignInWithMfa       | ![Advanced][AQP]    |                     |                  |                  | ![Advanced][AQP]    |
| postalCode                                                 | ![Advanced][AQP]    | ![Advanced][AQP]    |                  |                  | ![Advanced][AQP]    |
| preferredLanguage                                          | ![Advanced][AQP]    | ![Advanced][AQP]    |                  |                  | ![Advanced][AQP]    |
| provisionedPlans/any(p:p/provisioningStatus)               | ![Advanced][AQP]    |                     |                  |                  | ![NotSupported][NS] |
| provisionedPlans/any(p:p/service)                          | ![Advanced][AQP]    | ![NotSupported][NS] |                  |                  | ![NotSupported][NS] |
| showInAddressList                                          | ![Advanced][AQP]    |                     |                  |                  | ![NotSupported][NS] |
| state                                                      | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| streetAddress                                              | ![Advanced][AQP]    | ![Advanced][AQP]    |                  |                  | ![Advanced][AQP]    |
| surname                                                    | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| usageLocation                                              | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![Advanced][AQP]    |
| userPrincipalName                                          | ![Default][RDS]     | ![Default][RDS]     |                  |                  | ![NotSupported][NS] |
| userType                                                   | ![Default][RDS]     |                     |                  |                  | ![Advanced][AQP]    |

[AQP]: ../concepts/images/advanced-query-parameters/advanced.png
[RDS]: ../concepts/images/advanced-query-parameters/default.png
[NS]: ../concepts/images/advanced-query-parameters/notSupported.png