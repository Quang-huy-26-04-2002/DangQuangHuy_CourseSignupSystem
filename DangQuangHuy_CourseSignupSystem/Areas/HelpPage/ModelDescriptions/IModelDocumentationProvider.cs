using System;
using System.Reflection;

namespace DangQuangHuy_CourseSignupSystem.Areas.HelpPage.ModelDescriptions
{
    public interface IModelDocumentationProvider
    {
        string GetDocumentation(MemberInfo member);

        string GetDocumentation(Type type);
    }
}