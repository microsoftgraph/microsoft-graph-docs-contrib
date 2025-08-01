---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerTaskConfiguration = {
    editPolicy: {
        rules: [
            {
                userType: {
                    '@odata.type': '#microsoft.graph.plannerRelationshipBasedUserType',
                    selectionKind: 'relationship',
                    role: 'defaultRules'
                },
                defaultRule: 'block',
                propertyRule: {
                    ruleKind: 'taskRule',
                    references: {
                        defaultRules: [ 'allow' ],
                        overrides: []
                    },
                    checkLists: {
                        defaultRules: [ 'allow' ],
                        overrides: []
                    },
                    assignments: {
                        defaultRules: [ 'allow' ],
                        overrides: [
                            {
                                name: 'userCreated',
                                rules: [ 'allow' ]
                            },
                            {
                                name: 'applicationCreated',
                                rules: [ 'allow' ]
                            }
                        ]
                    },
                    appliedCategories: {
                        defaultRules: [ 'allow' ],
                        overrides: []
                    }
                }
            }
        ]
    }
};

await client.api('/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/taskConfiguration')
	.version('beta')
	.update(plannerTaskConfiguration);

```