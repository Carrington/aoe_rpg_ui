import React from "react";
import { Paper, Tabs, Tab } from "@material-ui/core";

type handleChange = (event: React.ChangeEvent<{}>, value: number) => any;

interface InfoTabsProps {
  value: number;
  handleChange: handleChange;
}

const InfoTabs: React.SFC<InfoTabsProps> = ({ value, handleChange }) => (
  <Paper>
    <Tabs
        value={value}
        onChange={handleChange}
        indicatorColor="primary"
        textColor="primary"
        centered
    >
      <Tab label="" />
    </Tabs>
  </Paper>
);

export default InfoTabs;
