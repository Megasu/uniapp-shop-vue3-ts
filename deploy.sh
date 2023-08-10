#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
# npm run build:h5
# 注意：项目使用了 uniClound，需在 HbuilderX 打包 H5 网站，否则无法使用云功能

# 流水线.yml
# mkdir -p "./dist/build/h5/.workflow"
# cp "./pipeline-20230811.yml" "./dist/build/h5/.workflow/pipeline-20230811.yml"

# 进入生成的文件夹
cd dist/build/h5


# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@gitee.com:<USERNAME>/<REPO>.git master:gh-pages
git push -f git@gitee.com:Megasu/uniapp-shop-vue3-ts.git master:gh-pages

cd -
