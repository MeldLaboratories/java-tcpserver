package xyz.meldlabs.tcpserver.events;

import xyz.meldlabs.tcpserver.TcpConnection;
import xyz.meldlabs.tcpserver.events.args.OnSocketDisconnectArgs;

public interface OnSocketDisconnect {
  public void onDisconnect(TcpConnection sender, OnSocketDisconnectArgs args);
}
