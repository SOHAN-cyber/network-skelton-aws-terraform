provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAUULKAORTKS7CRA64"
    secret_key = "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"
}

module "my_own_module" {
    source = "./modules"
}
