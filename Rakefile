VERSION = '0.0.1'
PROVIDER = 'virtualbox'
BOX_NAMESPACE = 'mcandre'

BOX_BASENAME = 'mucus'
BOX_BASENAME_ARM64 = "#{BOX_BASENAME}-arm64"
BOX_BASENAME_ARMEL = "#{BOX_BASENAME}-armel"
BOX_BASENAME_ARMHF = "#{BOX_BASENAME}-armhf"
BOX_BASENAME_MIPS64EL = "#{BOX_BASENAME}-mips64el"
BOX_BASENAME_MIPSEL = "#{BOX_BASENAME}-mipsel"
BOX_BASENAME_PPC64EL = "#{BOX_BASENAME}-ppc64el"
BOX_BASENAME_SPARC64 = "#{BOX_BASENAME}-sparc64"

BOX_ARM64 = "#{BOX_BASENAME_ARM64}.box"
BOX_ARMEL = "#{BOX_BASENAME_ARMEL}.box"
BOX_ARMHF = "#{BOX_BASENAME_ARMHF}.box"
BOX_MIPS64EL = "#{BOX_BASENAME_MIPS64EL}.box"
BOX_MIPSEL = "#{BOX_BASENAME_MIPSEL}.box"
BOX_PPC64EL = "#{BOX_BASENAME_PPC64EL}.box"
BOX_SPARC64 = "#{BOX_BASENAME_SPARC64}.box"

SHORT_DESCRIPTION = 'a portable cross-compiler, cross-tester VM for GNU/Linux'

SHORT_DESCRIPTION_ARM64 = "#{SHORT_DESCRIPTION} arm64"
SHORT_DESCRIPTION_ARMEL = "#{SHORT_DESCRIPTION} armel"
SHORT_DESCRIPTION_ARMHF = "#{SHORT_DESCRIPTION} armhf"
SHORT_DESCRIPTION_MIPS64EL = "#{SHORT_DESCRIPTION} mips64el"
SHORT_DESCRIPTION_MIPSEL = "#{SHORT_DESCRIPTION} mipsel"
SHORT_DESCRIPTION_PPC64EL = "#{SHORT_DESCRIPTION} ppc64el"
SHORT_DESCRIPTION_SPARC64 = "#{SHORT_DESCRIPTION} sparc64"

VERSION_DESCRIPTION = 'Source: https://github.com/mcandre/mucus'

task :default => 'test'

task :box_arm64 => [
    "arm64#{File::SEPARATOR}Vagrantfile",
    "arm64#{File::SEPARATOR}bootstrap.sh",
    "arm64#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_arm64
] do
    sh 'vagrant up',
        :chdir => "arm64"
    sh "vagrant package --output #{BOX_ARM64} --vagrantfile export.Vagrantfile",
        :chdir => "arm64"
end

task :box_armel => [
    "armel#{File::SEPARATOR}Vagrantfile",
    "armel#{File::SEPARATOR}bootstrap.sh",
    "armel#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_armel
] do
    sh 'vagrant up',
        :chdir => "armel"
    sh "vagrant package --output #{BOX_ARMEL} --vagrantfile export.Vagrantfile",
        :chdir => "armel"
end

task :box_armhf => [
    "armhf#{File::SEPARATOR}Vagrantfile",
    "armhf#{File::SEPARATOR}bootstrap.sh",
    "armhf#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_armhf
] do
    sh 'vagrant up',
        :chdir => "armhf"
    sh "vagrant package --output #{BOX_ARMHF} --vagrantfile export.Vagrantfile",
        :chdir => "armhf"
end

task :box_mips64el => [
    "mips64el#{File::SEPARATOR}Vagrantfile",
    "mips64el#{File::SEPARATOR}bootstrap.sh",
    "mips64el#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_mips64el
] do
    sh 'vagrant up',
        :chdir => "mips64el"
    sh "vagrant package --output #{BOX_MIPS64EL} --vagrantfile export.Vagrantfile",
        :chdir => "mips64el"
end

task :box_mipsel => [
    "mipsel#{File::SEPARATOR}Vagrantfile",
    "mipsel#{File::SEPARATOR}bootstrap.sh",
    "mipsel#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_mipsel
] do
    sh 'vagrant up',
        :chdir => "mipsel"
    sh "vagrant package --output #{BOX_MIPSEL} --vagrantfile export.Vagrantfile",
        :chdir => "mipsel"
end

task :box_ppc64el => [
    "ppc64el#{File::SEPARATOR}Vagrantfile",
    "ppc64el#{File::SEPARATOR}bootstrap.sh",
    "ppc64el#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_ppc64el
] do
    sh 'vagrant up',
        :chdir => "ppc64el"
    sh "vagrant package --output #{BOX_PPC64EL} --vagrantfile export.Vagrantfile",
        :chdir => "ppc64el"
end

task :box_sparc64 => [
    "sparc64#{File::SEPARATOR}Vagrantfile",
    "sparc64#{File::SEPARATOR}bootstrap.sh",
    "sparc64#{File::SEPARATOR}export.Vagrantfile",
    :clean_box_sparc64
] do
    sh 'vagrant up',
        :chdir => "sparc64"
    sh "vagrant package --output #{BOX_SPARC64} --vagrantfile export.Vagrantfile",
        :chdir => "sparc64"
end

task :boxes => [
    :box_arm64,
    :box_armel,
    :box_armhf,
    :box_mips64el,
    :box_mipsel,
    :box_ppc64el,
    :box_sparc64
] do
end

task :import_arm64 => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_ARM64} #{BOX_ARM64}",
        :chdir => "arm64"
end

task :import_armel => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_ARMEL} #{BOX_ARMEL}",
        :chdir => "armel"
end

task :import_armhf => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_ARMHF} #{BOX_ARMHF}",
        :chdir => "armhf"
end

task :import_mips64el => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_MIPS64EL} #{BOX_MIPS64EL}",
        :chdir => "mips64el"
end

task :import_mipsel => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_MIPSEL} #{BOX_MIPSEL}",
        :chdir => "mipsel"
end

task :import_ppc64el => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_PPC64EL} #{BOX_PPC64EL}",
        :chdir => "ppc64el"
end

task :import_sparc64 => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_SPARC64} #{BOX_SPARC64}",
        :chdir => "sparc64"
end

task :import => [
    :import_arm64,
    :import_armel,
    :import_armhf,
    :import_mips64el,
    :import_mipsel,
    :import_ppc64el,
    :import_sparc64
] do
end

task :test_arm64 => [
    "arm64#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "arm64#{File::SEPARATOR}test#{File::SEPARATOR}hello.cpp"
] do
    sh 'vagrant up',
        :chdir => "arm64#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && aarch64-linux-gnu-g++ -o hello hello.cpp && ./hello"',
        :chdir => "arm64#{File::SEPARATOR}test"
end

task :test_armel => [
    "armel#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "armel#{File::SEPARATOR}test#{File::SEPARATOR}hello.cpp"
] do
    sh 'vagrant up',
        :chdir => "armel#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && arm-linux-gnueabi-g++ -o hello hello.cpp && ./hello"',
        :chdir => "armel#{File::SEPARATOR}test"
end

task :test_armhf => [
    "armhf#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "armhf#{File::SEPARATOR}test#{File::SEPARATOR}hello.cpp"
] do
    sh 'vagrant up',
        :chdir => "armhf#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && arm-linux-gnueabihf-g++ -o hello hello.cpp && ./hello"',
        :chdir => "armhf#{File::SEPARATOR}test"
end

task :test_mips64el => [
    "mips64el#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "mips64el#{File::SEPARATOR}test#{File::SEPARATOR}hello.cpp"
] do
    sh 'vagrant up',
        :chdir => "mips64el#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && mips64el-linux-gnuabi64-g++ -o hello hello.cpp && ./hello"',
        :chdir => "mips64el#{File::SEPARATOR}test"
end

task :test_mipsel => [
    "mipsel#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "mipsel#{File::SEPARATOR}test#{File::SEPARATOR}hello.cpp"
] do
    sh 'vagrant up',
        :chdir => "mipsel#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && mipsel-linux-gnu-g++ -o hello hello.cpp && ./hello"',
        :chdir => "mipsel#{File::SEPARATOR}test"
end

task :test_ppc64el => [
    "ppc64el#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "ppc64el#{File::SEPARATOR}test#{File::SEPARATOR}hello.cpp"
] do
    sh 'vagrant up',
        :chdir => "ppc64el#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && powerpc64le-linux-gnu-g++ -o hello hello.cpp && ./hello"',
        :chdir => "ppc64el#{File::SEPARATOR}test"
end

task :test_sparc64 => [
    "sparc64#{File::SEPARATOR}test#{File::SEPARATOR}Vagrantfile",
    "sparc64#{File::SEPARATOR}test#{File::SEPARATOR}hello.cpp"
] do
    sh 'vagrant up',
        :chdir => "sparc64#{File::SEPARATOR}test"
    sh 'vagrant ssh -c "cd /vagrant && sparc64-linux-gnu-g++ -o hello hello.cpp && ./hello"',
        :chdir => "sparc64#{File::SEPARATOR}test"
end

task :test => [
    :test_arm64,
    :test_armel,
    :test_armhf,
    :test_mips64el,
    :test_mipsel,
    :test_ppc64el,
    :test_sparc64
] do
end

task :publish_arm64 => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_ARM64} --force --release --short-description \"#{SHORT_DESCRIPTION_ARM64}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_ARM64}",
        :chdir => "arm64"
end

task :publish_armel => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_ARMEL} --force --release --short-description \"#{SHORT_DESCRIPTION_ARMEL}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_ARMEL}",
        :chdir => "armel"
end

task :publish_armhf => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_ARMHF} --force --release --short-description \"#{SHORT_DESCRIPTION_ARMHF}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_ARMHF}",
        :chdir => "armhf"
end

task :publish_mips64el => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_MIPS64EL} --force --release --short-description \"#{SHORT_DESCRIPTION_MIPS64EL}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_MIPS64EL}",
        :chdir => "mips64el"
end

task :publish_mipsel => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_MIPSEL} --force --release --short-description \"#{SHORT_DESCRIPTION_MIPSEL}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_MIPSEL}",
        :chdir => "mipsel"
end

task :publish_ppc64el => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_PPC64EL} --force --release --short-description \"#{SHORT_DESCRIPTION_PPC64EL}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_PPC64EL}",
        :chdir => "ppc64el"
end

task :publish_sparc64 => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_SPARC64} --force --release --short-description \"#{SHORT_DESCRIPTION_SPARC64}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_SPARC64}",
        :chdir => "sparc64"
end

task :publish => [
    :publish_arm64,
    :publish_armel,
    :publish_armhf,
    :publish_mips64el,
    :publish_mipsel,
    :publish_ppc64el,
    :publish_sparc64
] do
end

task :clean_box_arm64 => [] do
    Dir.glob("arm64#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_box_armel => [] do
    Dir.glob("armel#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_box_armhf => [] do
    Dir.glob("armhf#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_box_mips64el => [] do
    Dir.glob("mips64el#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_box_mipsel => [] do
    Dir.glob("mipsel#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_box_ppc64el => [] do
    Dir.glob("ppc64el#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_box_sparc64 => [] do
    Dir.glob("sparc64#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_boxes => [
    :clean_box_arm64,
    :clean_box_armel,
    :clean_box_armhf,
    :clean_box_mips64el,
    :clean_box_mipsel,
    :clean_box_ppc64el,
    :clean_box_sparc64
] do
end

task :clean_arm64 => [:clean_box_arm64] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'arm64'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "arm64#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("arm64#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end

    begin
        FileUtils.rm_r "arm64#{File::SEPARATOR}_tmp_package"
    rescue
    end
end

task :clean_armel => [:clean_box_armel] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'armel'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "armel#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("armel#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end

    begin
        FileUtils.rm_r "armel#{File::SEPARATOR}_tmp_package"
    rescue
    end
end

task :clean_armhf => [:clean_box_armhf] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'armhf'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "armhf#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("armhf#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end

    begin
        FileUtils.rm_r "armhf#{File::SEPARATOR}_tmp_package"
    rescue
    end
end

task :clean_mips64el => [:clean_box_mips64el] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'mips64el'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "mips64el#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("mips64el#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end

    begin
        FileUtils.rm_r "mips64el#{File::SEPARATOR}_tmp_package"
    rescue
    end
end

task :clean_mipsel => [:clean_box_mipsel] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'mipsel'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "mipsel#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("mipsel#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end

    begin
        FileUtils.rm_r "mipsel#{File::SEPARATOR}_tmp_package"
    rescue
    end
end

task :clean_ppc64el => [:clean_box_ppc64el] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'ppc64el'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "ppc64el#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("ppc64el#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end

    begin
        FileUtils.rm_r "ppc64el#{File::SEPARATOR}_tmp_package"
    rescue
    end
end

task :clean_sparc64 => [:clean_box_sparc64] do
    begin
        sh 'vagrant destroy -f',
            :chdir => 'sparc64'
    rescue
    end

    begin
        sh 'vagrant destroy -f',
            :chdir => "sparc64#{File::SEPARATOR}test"
    rescue
    end

    begin
        Dir.glob("sparc64#{File::SEPARATOR}**#{File::SEPARATOR}.vagrant").each { |path| FileUtils.rm_r path }
    rescue
    end

    begin
        FileUtils.rm_r "sparc64#{File::SEPARATOR}_tmp_package"
    rescue
    end
end

task :clean => [
    :clean_arm64,
    :clean_armel,
    :clean_armhf,
    :clean_mips64el,
    :clean_mipsel,
    :clean_ppc64el,
    :clean_sparc64
] do
end
