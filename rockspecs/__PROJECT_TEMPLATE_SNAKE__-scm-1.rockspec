rockspec_format = "3.0"
package = "__PROJECT_TEMPLATE_SNAKE__"
version = "scm-1"
source = {
    url = "git+https://github.com/__GITHUB_PROJECT__/__PROJECT_TEMPLATE_SNAKE__.git",
    branch = "master"
}
description = {
    summary = "A Lua Rock",
    homepage = "https://github.com/__GITHUB_PROJECT__/__PROJECT_TEMPLATE_SNAKE__",
    license = "MIT",
    maintainer = "__PROJECT_TEMPLATE_AUTHOR__ <__PROJECT_TEMPLATE_EMAIL__>",
    labels = { }
}
dependencies = {
    "lua ~> 5.3"
}
build = {
    type = "builtin",
    modules = {
        __PROJECT_TEMPLATE_SNAKE__ = "src/__PROJECT_TEMPLATE_SNAKE__.lua",
    }
}
