:: navigate into the build output directory
cd dist

:: if you are deploying to a custom domain
echo 'https://Connor-Turlan.github.io/portfolio-vite' > CNAME

git checkout -b gh-pages
git add .
git commit -m 'deploy'

:: if you are deploying to https://<USERNAME>.github.io
:: git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

:: if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f -u origin gh-pages
echo pushed
cd ..