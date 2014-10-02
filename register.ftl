<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${rb.registerWith} ${realm.name}
    <#elseif section = "header">
        ${rb.registerWith} <strong>${realm.name}</strong>
    <#elseif section = "form">
        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
            <div class="${properties.kcFormGroupClass!}">
                <div class="hidden ${properties.kcLabelWrapperClass!}">
                    <label for="username" class="${properties.kcLabelClass!}">${rb.username}</label>
                </div>
                <div class="item item-input ${properties.kcInputWrapperClass!}">
                    <input type="text" id="username" class="${properties.kcInputClass!}" name="username" value="${register.formData.username!''}" placeholder="${rb.username}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div class="hidden ${properties.kcLabelWrapperClass!}">
                    <label for="firstName" class="${properties.kcLabelClass!}">${rb.firstName}</label>
                </div>
                <div class="item item-input ${properties.kcInputWrapperClass!}">
                    <input type="text" id="firstName" class="${properties.kcInputClass!}" name="firstName" value="${register.formData.firstName!''}" placeholder="${rb.firstName}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div class="hidden ${properties.kcLabelWrapperClass!}">
                    <label for="lastName" class="${properties.kcLabelClass!}">${rb.lastName}</label>
                </div>
                <div class="item item-input ${properties.kcInputWrapperClass!}">
                    <input type="text" id="lastName" class="${properties.kcInputClass!}" name="lastName" value="${register.formData.lastName!''}" placeholder="${rb.lastName}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div class="hidden ${properties.kcLabelWrapperClass!}">
                    <label for="email" class="${properties.kcLabelClass!}">${rb.email}</label>
                </div>
                <div class="item item-input ${properties.kcInputWrapperClass!}">
                    <input type="text" id="email" class="${properties.kcInputClass!}" name="email" value="${register.formData.email!''}" placeholder="${rb.email}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div class="hidden ${properties.kcLabelWrapperClass!}">
                    <label for="password" class="${properties.kcLabelClass!}">${rb.password}</label>
                </div>
                <div class="item item-input ${properties.kcInputWrapperClass!}">
                    <input type="password" id="password" class="${properties.kcInputClass!}" name="password" placeholder="${rb.password}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div class="hidden ${properties.kcLabelWrapperClass!}">
                    <label for="password-confirm" class="${properties.kcLabelClass!}">${rb.passwordConfirm}</label>
                </div>
                <div class="item item-input ${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-confirm" class="${properties.kcInputClass!}" name="password-confirm" placeholder="${rb.passwordConfirm}" />
                </div>
            </div>

            <div class="padding ${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a class="button button-block button-stable" href="${url.loginUrl}">${rb.backToLogin}</a></span>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input class="button button-block button-positive" type="submit" value="${rb.register}"/>
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>