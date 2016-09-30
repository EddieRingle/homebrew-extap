class CapnprotoJava < Formula
  desc ""
  homepage "https://github.com/eddieringle/capnproto-java"
  head "https://github.com/eddieringle/capnproto-java.git", :branch => "next"

  depends_on "capnp"
  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
