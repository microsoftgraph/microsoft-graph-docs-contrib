---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationEventsFlow = {
    '@odata.type': '#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow',
    displayName: 'Woodgrove User Flow 2',
    onAuthenticationMethodLoadStart: {
        '@odata.type': '#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp',
        identityProviders: [
            {
                id: 'EmailPassword-OAUTH'
            },
            {
                id: 'Google-OAUTH'
            },
            {
                id: 'Facebook-OAUTH'
            }
        ]
    },  
    onInteractiveAuthFlowStart: {
        '@odata.type': '#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp',
        isSignUpAllowed: true
    },
    onAttributeCollection: {
        '@odata.type': '#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp',
        attributes: [
            {
                id: 'email',
                displayName: 'Email Address',
                description: 'Email address of the user',
                userFlowAttributeType: 'builtIn',
                dataType: 'string'
            },
            {
                id: 'displayName',
                displayName: 'Display Name',
                description: 'Display Name of the User.',
                userFlowAttributeType: 'builtIn',
                dataType: 'string'
            },
            {
                id: 'extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor',
                displayName: 'Favorite color',
                description: 'what is your favorite color',
                userFlowAttributeType: 'custom',
                dataType: 'string'
            }
        ],
        attributeCollectionPage: {
            views: [
                {
                    inputs: [
                        {
                            attribute: 'email',
                            label: 'Email Address',
                            inputType: 'Text',
                            hidden: true,
                            editable: false,
                            writeToDirectory: true,
                            required: true,
                            validationRegEx: '^[a-zA-Z0-9.!#$%&amp;&#8217;\'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$'
                        },
                        {
                            attribute: 'displayName',
                            label: 'Display Name',
                            inputType: 'text',
                            hidden: false,
                            editable: true,
                            writeToDirectory: true,
                            required: false,
                            validationRegEx: '^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$'
                        },
                        {
                            attribute: 'extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor',
                            label: 'Favorite color',
                            inputType: 'text',
                            hidden: false,
                            editable: true,
                            writeToDirectory: true,
                            required: false,
                            validationRegEx: '^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$'
                        }
                    ]
                }
            ]
        }
    }
};

await client.api('/identity/authenticationEventsFlows')
	.version('beta')
	.post(authenticationEventsFlow);

```