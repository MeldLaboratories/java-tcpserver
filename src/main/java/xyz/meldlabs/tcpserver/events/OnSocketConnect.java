package xyz.meldlabs.tcpserver.events;

import xyz.meldlabs.tcpserver.TcpServer;
import xyz.meldlabs.tcpserver.events.args.OnSocketConnectArgs;

public interface OnSocketConnect {
  public void onConnect(TcpServer sender, OnSocketConnectArgs args);
}
