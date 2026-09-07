<#import "lib-sequence.ftl" as s>
<#import "lib-datetime.ftl" as dt>

<@showGlobalCitationCount statement />

<#macro showGlobalCitationCount statement>
    
    <#local citationCount>
        <#-- hasGlobalCountDate -->
        <#if statement.countDate?has_content>
            <em>${statement.countDate!}</em>
        </#if>

        <#-- hasGlobalCountValue -->
        <#if statement.countValue?has_content>
            <em>${statement.countValue!}</em>
        <#else>
            <em>No count value</em>
        </#if>

        <#-- hasGlobalCountSource -->
        <#if statement.countSource?has_content>
            <em>${statement.countSource!}</em>
        </#if>
    </#local>

    ${citationCount} <@dt.yearSpan "${statement.countDate!}" />
</#macro>