#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e


# 1. 先提交 master

git push git@github.com:erabbit-dev/erabbit-uni-app.git master:master

# 2. 打包生成静态文件
# npm run build:h5
# 注意：项目使用了 uniClound，需在 HbuilderX 打包 H5 网站，否则无法使用云功能
cli publish --platform h5 --project erabbit-uni-app --spaceId mp-2fac390c-2ea7-4d12-9726-f5b9a3bb6c37

# 3. 生成流水线.yml
mkdir -p "./dist/build/h5/.github/workflows"
cp "./deploy.yml" "./dist/build/h5/.github/workflows/deploy.yml"

# 4. 进入生成的文件夹，提交到主仓库 gh-pages 分支
# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME
cd dist/build/h5
git init
git add -A
git commit -m 'deploy: gh-pages'

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@gitee.com:<USERNAME>/<REPO>.git master:gh-pages
git push -f git@github.com:erabbit-dev/erabbit-uni-app.git gh-pages:gh-pages

cd -
