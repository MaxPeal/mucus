VERSION = '0.0.1'
PROVIDER = 'virtualbox'
BOX_NAMESPACE = 'mcandre'

BOX_BASENAME = 'mucus'
BOX_BASENAME_MIPS64EL = "#{BOX_BASENAME}-mips64el"
BOX_BASENAME_MIPSEL = "#{BOX_BASENAME}-mipsel"

BOX_MIPS64EL = "#{BOX_BASENAME_MIPS64EL}.box"
BOX_MIPSEL = "#{BOX_BASENAME_MIPSEL}.box"

SHORT_DESCRIPTION = 'a portable cross-compiler, cross-tester VM for GNU/Linux'

SHORT_DESCRIPTION_MIPS64EL = "#{SHORT_DESCRIPTION} mips64el"
SHORT_DESCRIPTION_MIPSEL = "#{SHORT_DESCRIPTION} mipsel"

VERSION_DESCRIPTION = 'Source: https://github.com/mcandre/mucus'

task :default => 'test'

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

task :boxes => [
    :box_mips64el,
    :box_mipsel
] do
end

task :import_mips64el => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_MIPS64EL} #{BOX_MIPS64EL}",
        :chdir => "mips64el"
end

task :import_mipsel => [] do
    sh "vagrant box add --force --name #{BOX_NAMESPACE}/#{BOX_BASENAME_MIPSEL} #{BOX_MIPSEL}",
        :chdir => "mipsel"
end

task :import => [
    :import_mips64el,
    :import_mipsel
] do
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

task :test => [
    :test_mips64el,
    :test_mipsel
] do
end

task :publish_mips64el => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_MIPS64EL} --force --release --short-description \"#{SHORT_DESCRIPTION_MIPS64EL}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_MIPS64EL}",
        :chdir => "mips64el"
end

task :publish_mipsel => [] do
    sh "vagrant cloud publish #{BOX_NAMESPACE}/#{BOX_BASENAME_MIPSEL} --force --release --short-description \"#{SHORT_DESCRIPTION_MIPSEL}\" --version-description \"#{VERSION_DESCRIPTION}\" #{VERSION} #{PROVIDER} #{BOX_MIPSEL}",
        :chdir => "mipsel"
end

task :publish => [
    :publish_mips64el,
    :publish_mipsel
] do
end

task :clean_box_mips64el => [] do
    Dir.glob("mips64el#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_box_mipsel => [] do
    Dir.glob("mipsel#{File::SEPARATOR}*.box").each { |path| File.delete path }
end

task :clean_boxes => [
    :clean_box_mips64el,
    :clean_box_mipsel
] do
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

task :clean => [
    :clean_mips64el,
    :clean_mipsel
] do
end
