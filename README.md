# Cursor Rules Collection

A personal collection of `.cursorrules` files for different project types and technologies. Think of it as "dotfiles" but specifically for Cursor AI configuration.

## What are .cursorrules?

`.cursorrules` files are configuration files that provide Cursor AI with specific instructions on how to generate and interact with code. They act as a blueprint for guiding the AI's behavior to match your project's standards and requirements.

## Repository Structure

```shell
.
├── README.md
├── rails/                  # Ruby on Rails specific rules
│   ├── basic.cursorrules   # Basic Rails conventions
│   └── api.cursorrules     # Rails API specific rules
├── javascript/             # JavaScript framework rules
├── python/                # Python specific rules
└── scripts/              # Helper scripts for installation
    └── install.sh        # Script to copy rules to new projects
```

## Usage

1. Clone this repository:

```bash
git clone https://github.com/yourusername/cursor-rules.git
```

2. For a new Rails project, copy the rules:

```bash
cp cursor-rules/rails/basic.cursorrules your-rails-project/.cursorrules
```

Or use the install script:

```bash
./scripts/install.sh rails your-project-path
```

## Contributing

Feel free to add your own rules or improve existing ones by submitting pull requests.

## License

MIT
