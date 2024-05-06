STR=s/{template}/$1/g

sed -i '' $STR \
    README.md \
    development/README.md \
    development/pyproject.toml \
    development/.env.example \
    system/README.md \
    system/project_base/pyproject.toml \
    system/project_base/.env.example \
    system/preprocess/README.md \
    system/preprocess/pyproject.toml
